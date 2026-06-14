; =========================================================
; Game Engine Function: sub_FDA44
; Address            : 0xFDA44 - 0xFDA78
; =========================================================

FDA44:  PUSH            {R4,R5,R7,LR}
FDA46:  ADD             R7, SP, #8
FDA48:  ADD.W           R4, R0, #0xC
FDA4C:  MOV             R5, R0
FDA4E:  MOV             R0, R4; this
FDA50:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
FDA54:  LDRB            R0, [R5,#0x14]
FDA56:  LSLS            R0, R0, #0x1E
FDA58:  BMI             loc_FDA72
FDA5A:  MOV             R0, R5; this
FDA5C:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
FDA60:  LDR             R0, [R5,#0x14]
FDA62:  ORR.W           R0, R0, #2
FDA66:  STR             R0, [R5,#0x14]
FDA68:  MOV             R0, R4
FDA6A:  POP.W           {R4,R5,R7,LR}
FDA6E:  B.W             sub_10C4DC
FDA72:  MOVS            R0, #1
FDA74:  BL              sub_FD714
