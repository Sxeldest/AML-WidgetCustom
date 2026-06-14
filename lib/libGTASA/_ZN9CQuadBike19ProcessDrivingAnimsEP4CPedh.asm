; =========================================================
; Game Engine Function: _ZN9CQuadBike19ProcessDrivingAnimsEP4CPedh
; Address            : 0x57ABFC - 0x57AC26
; =========================================================

57ABFC:  MOV             R12, R0
57ABFE:  LDRB.W          R0, [R12,#0x1E]
57AC02:  LSLS            R0, R0, #0x1E
57AC04:  IT MI
57AC06:  BXMI            LR
57AC08:  PUSH            {R7,LR}
57AC0A:  MOV             R7, SP
57AC0C:  SUB             SP, SP, #8
57AC0E:  LDR.W           R3, [R12,#0x99C]
57AC12:  MOVS            R0, #0
57AC14:  ADD.W           R2, R12, #0x9A0
57AC18:  STR             R0, [SP,#0x10+var_10]
57AC1A:  MOV             R0, R1
57AC1C:  MOV             R1, R12
57AC1E:  BLX             j__ZN5CBike17ProcessRiderAnimsEP4CPedP8CVehicleP13CRideAnimDataP17tBikeHandlingDatas; CBike::ProcessRiderAnims(CPed *,CVehicle *,CRideAnimData *,tBikeHandlingData *,short)
57AC22:  ADD             SP, SP, #8
57AC24:  POP             {R7,PC}
