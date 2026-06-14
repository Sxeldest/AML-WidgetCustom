; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannon14ExtinguishFireEP4CPed
; Address            : 0x512048 - 0x512072
; =========================================================

512048:  MOV             R2, R0
51204A:  LDR.W           R0, [R1,#0x590]; this
51204E:  LDRB.W          R1, [R0,#0x3A]
512052:  AND.W           R1, R1, #0xF8
512056:  CMP             R1, #0x18
512058:  BNE             loc_512062
51205A:  LDR             R1, [R2,#0xC]; CFire *
51205C:  LDRB            R2, [R1]
51205E:  LSLS            R2, R2, #0x1F
512060:  BNE             loc_512066
512062:  MOVS            R0, #1
512064:  BX              LR
512066:  PUSH            {R7,LR}
512068:  MOV             R7, SP
51206A:  BLX             j__ZN11CAutomobile16FireTruckControlEP5CFire; CAutomobile::FireTruckControl(CFire *)
51206E:  MOVS            R0, #0
512070:  POP             {R7,PC}
