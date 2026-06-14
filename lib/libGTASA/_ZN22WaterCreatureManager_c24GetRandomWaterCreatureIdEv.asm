; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c24GetRandomWaterCreatureIdEv
; Address            : 0x5930F0 - 0x593182
; =========================================================

5930F0:  PUSH            {R7,LR}
5930F2:  MOV             R7, SP
5930F4:  VPUSH           {D8}
5930F8:  BLX             rand
5930FC:  UXTH            R0, R0
5930FE:  VLDR            S16, =0.000015259
593102:  VMOV            S0, R0
593106:  VLDR            S2, =100.0
59310A:  VCVT.F32.S32    S0, S0
59310E:  VMUL.F32        S0, S0, S16
593112:  VMUL.F32        S0, S0, S2
593116:  VCVT.S32.F32    S0, S0
59311A:  VMOV            R1, S0
59311E:  CMP             R1, #0x4F ; 'O'
593120:  BGT             loc_59314A
593122:  BLX             rand
593126:  UXTH            R0, R0
593128:  VMOV.F32        S2, #3.0
59312C:  VMOV            S0, R0
593130:  VCVT.F32.S32    S0, S0
593134:  VMUL.F32        S0, S0, S16
593138:  VMUL.F32        S0, S0, S2
59313C:  VCVT.S32.F32    S0, S0
593140:  VMOV            R0, S0
593144:  VPOP            {D8}
593148:  POP             {R7,PC}
59314A:  CMP             R1, #0x59 ; 'Y'
59314C:  BGT             loc_593174
59314E:  BLX             rand
593152:  UXTH            R0, R0
593154:  VMOV            S0, R0
593158:  VCVT.F32.S32    S0, S0
59315C:  VMUL.F32        S0, S0, S16
593160:  VADD.F32        S0, S0, S0
593164:  VCVT.S32.F32    S0, S0
593168:  VMOV            R0, S0
59316C:  ADDS            R0, #3
59316E:  VPOP            {D8}
593172:  POP             {R7,PC}
593174:  MOVS            R0, #6
593176:  CMP             R1, #0x61 ; 'a'
593178:  IT LT
59317A:  MOVLT           R0, #5
59317C:  VPOP            {D8}
593180:  POP             {R7,PC}
