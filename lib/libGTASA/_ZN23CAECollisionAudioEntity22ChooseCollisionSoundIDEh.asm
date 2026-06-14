; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity22ChooseCollisionSoundIDEh
; Address            : 0x394F64 - 0x394FB0
; =========================================================

394F64:  PUSH            {R4-R7,LR}
394F66:  ADD             R7, SP, #0xC
394F68:  PUSH.W          {R11}
394F6C:  MOV             R2, R0; int
394F6E:  LDR             R0, =(gCollisionLookup_ptr - 0x394F74)
394F70:  ADD             R0, PC; gCollisionLookup_ptr
394F72:  LDR             R3, [R0]; gCollisionLookup
394F74:  LSLS            R0, R1, #4
394F76:  ADD.W           R4, R3, R1,LSL#4
394F7A:  LDR             R0, [R3,R0]; this
394F7C:  MOV             R5, R4
394F7E:  LDR.W           R3, [R5,#4]!
394F82:  CMP             R0, R3
394F84:  BEQ             loc_394FA8
394F86:  ADD.W           R6, R2, R1,LSL#1
394F8A:  MOV             R1, R3; int
394F8C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
394F90:  LDRSH.W         R1, [R6,#0x7C]!
394F94:  B               loc_394FA2
394F96:  LDR             R1, [R5]; int
394F98:  LDR             R0, [R4]; this
394F9A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
394F9E:  LDRSH.W         R1, [R6]
394FA2:  SXTH            R2, R0; int
394FA4:  CMP             R2, R1
394FA6:  BEQ             loc_394F96
394FA8:  SXTH            R0, R0
394FAA:  POP.W           {R11}
394FAE:  POP             {R4-R7,PC}
