; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord9GetStatusEPK4CPed
; Address            : 0x4C2ED0 - 0x4C2F02
; =========================================================

4C2ED0:  LDR             R1, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4C2EDE)
4C2ED2:  MOV.W           R12, #0
4C2ED6:  MOV.W           R3, #0xFFFFFFFF
4C2EDA:  ADD             R1, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4C2EDC:  LDR             R1, [R1]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4C2EDE:  ADD.W           R2, R1, #0xC
4C2EE2:  LDR             R1, [R2]
4C2EE4:  CMP             R1, R0
4C2EE6:  MOV.W           R1, #0
4C2EEA:  IT EQ
4C2EEC:  MOVEQ           R1, #1
4C2EEE:  ORR.W           R12, R12, R1
4C2EF2:  BEQ             loc_4C2EFC
4C2EF4:  ADDS            R3, #1
4C2EF6:  ADDS            R2, #0x14
4C2EF8:  CMP             R3, #0x7E ; '~'
4C2EFA:  BLE             loc_4C2EE2
4C2EFC:  AND.W           R0, R12, #1
4C2F00:  BX              LR
