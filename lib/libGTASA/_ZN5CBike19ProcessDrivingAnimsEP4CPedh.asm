; =========================================================
; Game Engine Function: _ZN5CBike19ProcessDrivingAnimsEP4CPedh
; Address            : 0x567870 - 0x5678A2
; =========================================================

567870:  MOV             R12, R0
567872:  LDRB.W          R0, [R12,#0x1E]
567876:  LSLS            R0, R0, #0x1E
567878:  BPL             loc_567884
56787A:  LDRB.W          R0, [R12,#0x3A]
56787E:  CMP             R0, #7
567880:  IT HI
567882:  BXHI            LR
567884:  PUSH            {R7,LR}
567886:  MOV             R7, SP
567888:  SUB             SP, SP, #8
56788A:  LDR.W           R3, [R12,#0x650]
56788E:  MOVS            R0, #0
567890:  ADDW            R2, R12, #0x654
567894:  STR             R0, [SP,#0x10+var_10]
567896:  MOV             R0, R1
567898:  MOV             R1, R12
56789A:  BLX             j__ZN5CBike17ProcessRiderAnimsEP4CPedP8CVehicleP13CRideAnimDataP17tBikeHandlingDatas; CBike::ProcessRiderAnims(CPed *,CVehicle *,CRideAnimData *,tBikeHandlingData *,short)
56789E:  ADD             SP, SP, #8
5678A0:  POP             {R7,PC}
