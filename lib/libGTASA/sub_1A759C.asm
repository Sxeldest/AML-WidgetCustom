; =========================================================
; Game Engine Function: sub_1A759C
; Address            : 0x1A759C - 0x1A75D2
; =========================================================

1A759C:  LDR             R2, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x1A75AA)
1A759E:  MOVS            R1, #0
1A75A0:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x1A75AE)
1A75A2:  MOV.W           R12, #0xFFFFFFFF
1A75A6:  ADD             R2, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
1A75A8:  MOVS            R3, #3
1A75AA:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
1A75AC:  LDR             R2, [R2]; CPedScriptedTaskRecord::ms_scriptedTasks ...
1A75AE:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
1A75B0:  ADD.W           R2, R2, #0xA00
1A75B4:  STRD.W          R12, R1, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks
1A75B8:  STRD.W          R1, R1, [R0,#8]
1A75BC:  STR             R3, [R0,#0x10]
1A75BE:  ADDS            R0, #0x14
1A75C0:  CMP             R0, R2
1A75C2:  BNE             loc_1A75B4
1A75C4:  LDR             R0, =(nullsub_37+1 - 0x1A75CE)
1A75C6:  MOVS            R1, #0; obj
1A75C8:  LDR             R2, =(unk_67A000 - 0x1A75D0)
1A75CA:  ADD             R0, PC; nullsub_37 ; lpfunc
1A75CC:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A75CE:  B.W             j___cxa_atexit
