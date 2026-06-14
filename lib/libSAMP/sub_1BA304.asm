; =========================================================
; Game Engine Function: sub_1BA304
; Address            : 0x1BA304 - 0x1BA3D4
; =========================================================

1BA304:  PUSH            {R11,LR}
1BA308:  MOV             R11, SP
1BA30C:  SUB             SP, SP, #8
1BA310:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BA328)
1BA314:  MOVW            R2, #:lower16:(elf_gnu_hash_indexes+0x1946)
1BA318:  LDR             R1, =(dword_382774 - 0x1BA334)
1BA31C:  MOVT            R2, #:upper16:(elf_gnu_hash_indexes+0x1946)
1BA320:  LDR             R0, [PC,R0]; __stack_chk_guard
1BA324:  LDR             R0, [R0]
1BA328:  STR             R0, [SP,#8+var_4]
1BA32C:  LDR             R0, [PC,R1]; dword_382774
1BA330:  MOV             R1, #0
1BA334:  STR             R1, [SP,#8+pointer]
1BA338:  LDR             R1, [R0]
1BA33C:  LDR             R3, [R1,#0x18]
1BA340:  MOV             R1, SP
1BA344:  BLX             R3
1BA348:  CMP             R0, #0
1BA34C:  BEQ             loc_1BA38C
1BA350:  CMN             R0, #2
1BA354:  BNE             loc_1BA3B0
1BA358:  LDR             R0, =(dword_382774 - 0x1BA368)
1BA35C:  MOV             R2, #0
1BA360:  LDR             R0, [PC,R0]; dword_382774
1BA364:  LDR             R1, [R0]
1BA368:  LDR             R3, [R1,#0x10]
1BA36C:  MOV             R1, SP
1BA370:  BLX             R3
1BA374:  CMP             R0, #0
1BA378:  BNE             loc_1BA3BC
1BA37C:  LDR             R0, =(dword_382778 - 0x1BA38C)
1BA380:  LDR             R1, [SP,#8+pointer]; pointer
1BA384:  LDR             R0, [PC,R0]; dword_382778 ; key
1BA388:  BL              pthread_setspecific
1BA38C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1BA3A0)
1BA390:  LDR             R0, [SP,#8+pointer]
1BA394:  LDR             R2, [SP,#8+var_4]
1BA398:  LDR             R1, [PC,R1]; __stack_chk_guard
1BA39C:  LDR             R1, [R1]
1BA3A0:  SUBS            R1, R1, R2
1BA3A4:  MOVEQ           SP, R11
1BA3A8:  POPEQ           {R11,PC}
1BA3AC:  BL              __stack_chk_fail
1BA3B0:  ADR             R0, aGetenv_0; "GetEnv"
1BA3B4:  ADR             R1, aErrorGettingJn; "Error getting JNIEnv!"
1BA3B8:  B               loc_1BA3C4
1BA3BC:  ADR             R0, aGetenv_0; "GetEnv"
1BA3C0:  ADR             R1, aErrorAttaching; "Error attaching to current thread!"
1BA3C4:  BL              j_al_print
1BA3C8:  MOV             R0, #1; status
1BA3CC:  MOV             LR, PC
1BA3D0:  B               exit
