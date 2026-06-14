; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord28GetRecordAssociatedWithEventEP19CEventScriptCommand
; Address            : 0x4C2BD0 - 0x4C2BF0
; =========================================================

4C2BD0:  MOV             R1, R0
4C2BD2:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4C2BDC)
4C2BD4:  MOV.W           R2, #0xFFFFFFFF
4C2BD8:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4C2BDA:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4C2BDC:  LDR             R3, [R0,#4]
4C2BDE:  CMP             R3, R1
4C2BE0:  IT EQ
4C2BE2:  BXEQ            LR
4C2BE4:  ADDS            R2, #1
4C2BE6:  ADDS            R0, #0x14
4C2BE8:  CMP             R2, #0x7F
4C2BEA:  BLT             loc_4C2BDC
4C2BEC:  MOVS            R0, #0
4C2BEE:  BX              LR
