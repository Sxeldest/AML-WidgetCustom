; =========================================================
; Game Engine Function: ReadALConfig
; Address            : 0x2504EC - 0x250596
; =========================================================

2504EC:  PUSH            {R4,R5,R7,LR}
2504EE:  ADD             R7, SP, #8
2504F0:  MOVS            R0, #1; item_count
2504F2:  MOVS            R1, #0xC; item_size
2504F4:  MOVS            R4, #1
2504F6:  BLX             calloc
2504FA:  LDR             R5, =(dword_6D640C - 0x250502)
2504FC:  LDR             R1, =(aGeneral - 0x250504); "general"
2504FE:  ADD             R5, PC; dword_6D640C
250500:  ADD             R1, PC; "general"
250502:  STR             R0, [R5]
250504:  MOV             R0, R1; char *
250506:  BLX             j_strdup
25050A:  LDR             R1, =(dword_6D6410 - 0x250512)
25050C:  LDR             R2, [R5]
25050E:  ADD             R1, PC; dword_6D6410
250510:  STR             R0, [R2]
250512:  ADR             R0, aEtcOpenalAlsof; "/etc/openal/alsoft.conf"
250514:  STR             R4, [R1]
250516:  ADR             R1, aR; "r"
250518:  BLX             fopen
25051C:  MOV             R4, R0
25051E:  CBZ             R4, loc_25052C
250520:  MOV             R0, R4; stream
250522:  BL              sub_2505E8
250526:  MOV             R0, R4; stream
250528:  BLX             fclose
25052C:  ADR             R0, aHome; "HOME"
25052E:  BLX             getenv
250532:  MOV             R3, R0
250534:  CMP             R3, #0
250536:  ITT NE
250538:  LDRBNE          R0, [R3]
25053A:  CMPNE           R0, #0
25053C:  BEQ             loc_250566
25053E:  LDR             R4, =(byte_6D6418 - 0x25054A)
250540:  ADR             R2, aSAlsoftrc; "%s/.alsoftrc"
250542:  MOV.W           R1, #0x400
250546:  ADD             R4, PC; byte_6D6418
250548:  MOV             R0, R4
25054A:  BL              sub_5E6B74
25054E:  ADR             R1, aR; "r"
250550:  MOV             R0, R4; filename
250552:  BLX             fopen
250556:  MOV             R4, R0
250558:  CBZ             R4, loc_250566
25055A:  MOV             R0, R4; stream
25055C:  BL              sub_2505E8
250560:  MOV             R0, R4; stream
250562:  BLX             fclose
250566:  ADR             R0, aAlsoftConf; "ALSOFT_CONF"
250568:  BLX             getenv
25056C:  CMP             R0, #0
25056E:  ITT NE
250570:  LDRBNE          R1, [R0]
250572:  CMPNE           R1, #0
250574:  BEQ             locret_250594
250576:  ADR             R1, aR; "r"
250578:  BLX             fopen
25057C:  MOV             R4, R0
25057E:  CMP             R4, #0
250580:  IT EQ
250582:  POPEQ           {R4,R5,R7,PC}
250584:  MOV             R0, R4; stream
250586:  BL              sub_2505E8
25058A:  MOV             R0, R4; stream
25058C:  POP.W           {R4,R5,R7,LR}
250590:  B.W             j_fclose
250594:  POP             {R4,R5,R7,PC}
