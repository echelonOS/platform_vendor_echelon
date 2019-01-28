package generator

import (
	"fmt"

	"android/soong/android"
)

func echelonExpandVariables(ctx android.ModuleContext, in string) string {
	echelonVars := ctx.Config().VendorConfig("echelonVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if echelonVars.IsSet(name) {
			return echelonVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
