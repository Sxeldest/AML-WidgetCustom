; =========================================================
; Game Engine Function: _Z20_rwMatrixNormalErrorPK11RwMatrixTag
; Address            : 0x1E3014 - 0x1E309E
; =========================================================

1E3014:  VLDR            S0, [R0,#0x10]
1E3018:  VLDR            S2, [R0,#0x14]
1E301C:  VLDR            S6, [R0]
1E3020:  VMUL.F32        S0, S0, S0
1E3024:  VLDR            S8, [R0,#4]
1E3028:  VMUL.F32        S2, S2, S2
1E302C:  VMUL.F32        S6, S6, S6
1E3030:  VLDR            S4, [R0,#0x18]
1E3034:  VMUL.F32        S8, S8, S8
1E3038:  VLDR            S12, [R0,#0x20]
1E303C:  VLDR            S14, [R0,#0x24]
1E3040:  VMUL.F32        S4, S4, S4
1E3044:  VLDR            S10, [R0,#8]
1E3048:  VMUL.F32        S12, S12, S12
1E304C:  VMUL.F32        S14, S14, S14
1E3050:  VLDR            S1, [R0,#0x28]
1E3054:  VADD.F32        S0, S0, S2
1E3058:  VMUL.F32        S2, S10, S10
1E305C:  VADD.F32        S6, S6, S8
1E3060:  VMUL.F32        S8, S1, S1
1E3064:  VADD.F32        S10, S12, S14
1E3068:  VMOV.F32        S12, #-1.0
1E306C:  VADD.F32        S0, S0, S4
1E3070:  VADD.F32        S2, S6, S2
1E3074:  VADD.F32        S4, S10, S8
1E3078:  VADD.F32        S0, S0, S12
1E307C:  VADD.F32        S2, S2, S12
1E3080:  VADD.F32        S4, S4, S12
1E3084:  VMUL.F32        S0, S0, S0
1E3088:  VMUL.F32        S2, S2, S2
1E308C:  VMUL.F32        S4, S4, S4
1E3090:  VADD.F32        S0, S2, S0
1E3094:  VADD.F32        S0, S0, S4
1E3098:  VMOV            R0, S0
1E309C:  BX              LR
