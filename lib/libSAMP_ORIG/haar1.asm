; =========================================================
; Game Engine Function: haar1
; Address            : 0xBE41A - 0xBE47C
; =========================================================

BE41A:  PUSH            {R4-R7,LR}
BE41C:  ADD             R7, SP, #0xC
BE41E:  PUSH.W          {R8-R10}
BE422:  CMP             R2, #1
BE424:  ITT GE
BE426:  MOVGE.W         R12, R1,ASR#1
BE42A:  CMPGE.W         R12, #1
BE42E:  BLT             loc_BE476
BE430:  MOV.W           R9, R2,LSL#2
BE434:  MOV.W           LR, #0
BE438:  MOV.W           R8, #0x4000
BE43C:  MOVW            R10, #0x5A82
BE440:  MOV             R5, R0
BE442:  MOV             R6, R12
BE444:  LDRSH.W         R3, [R5]
BE448:  SUBS            R6, #1
BE44A:  LDRSH.W         R1, [R5,R2,LSL#1]
BE44E:  SMLABB.W        R3, R3, R10, R8
BE452:  SMLABB.W        R4, R1, R10, R3
BE456:  MLS.W           R1, R1, R10, R3
BE45A:  MOV.W           R3, R4,LSR#15
BE45E:  STRH            R3, [R5]
BE460:  MOV.W           R1, R1,LSR#15
BE464:  STRH.W          R1, [R5,R2,LSL#1]
BE468:  ADD             R5, R9
BE46A:  BNE             loc_BE444
BE46C:  ADD.W           LR, LR, #1
BE470:  ADDS            R0, #2
BE472:  CMP             LR, R2
BE474:  BNE             loc_BE440
BE476:  POP.W           {R8-R10}
BE47A:  POP             {R4-R7,PC}
