; =========================================================
; Game Engine Function: alGetBufferi
; Address            : 0x1D63E0 - 0x1D6570
; =========================================================

1D63E0:  PUSH            {R4-R7,R11,LR}
1D63E4:  ADD             R11, SP, #0x10
1D63E8:  MOV             R5, R2
1D63EC:  MOV             R6, R1
1D63F0:  MOV             R7, R0
1D63F4:  BL              j_GetContextRef
1D63F8:  MOV             R4, R0
1D63FC:  CMP             R4, #0
1D6400:  POPEQ           {R4-R7,R11,PC}
1D6404:  CMP             R5, #0
1D6408:  BEQ             loc_1D647C
1D640C:  LDR             R0, [R4,#0xFC]
1D6410:  MOV             R1, R7
1D6414:  ADD             R0, R0, #0x3C ; '<'
1D6418:  BL              j_LookupUIntMapKey
1D641C:  MOV             R7, R0
1D6420:  CMP             R7, #0
1D6424:  BEQ             loc_1D6488
1D6428:  MOVW            R0, #0x2001
1D642C:  SUB             R0, R6, R0
1D6430:  CMP             R0, #9; switch 10 cases
1D6434:  BHI             def_1D6444; jumptable 001D6444 default case, cases 4-6
1D6438:  ADR             R1, jpt_1D6444
1D643C:  MOV             R0, R0,LSL#2
1D6440:  LDR             R0, [R0,R1]
1D6444:  ADD             PC, R0, R1; switch jump
1D6448:  DCD loc_1D6470 - 0x1D6448; jump table for switch statement
1D644C:  DCD loc_1D64A0 - 0x1D6448; jumptable 001D6444 case 1
1D6450:  DCD loc_1D64C0 - 0x1D6448; jumptable 001D6444 case 2
1D6454:  DCD loc_1D64E4 - 0x1D6448; jumptable 001D6444 case 3
1D6458:  DCD def_1D6444 - 0x1D6448; jumptable 001D6444 default case, cases 4-6
1D645C:  DCD def_1D6444 - 0x1D6448; jumptable 001D6444 default case, cases 4-6
1D6460:  DCD def_1D6444 - 0x1D6448; jumptable 001D6444 default case, cases 4-6
1D6464:  DCD loc_1D654C - 0x1D6448; jumptable 001D6444 case 7
1D6468:  DCD loc_1D6558 - 0x1D6448; jumptable 001D6444 case 8
1D646C:  DCD loc_1D6564 - 0x1D6448; jumptable 001D6444 case 9
1D6470:  LDR             R0, [R7,#4]; jumptable 001D6444 case 0
1D6474:  STR             R0, [R5]
1D6478:  B               loc_1D6494
1D647C:  MOV             R0, R4
1D6480:  MOVW            R1, #0xA003
1D6484:  B               loc_1D6490
1D6488:  MOV             R0, R4
1D648C:  MOVW            R1, #0xA001
1D6490:  BL              j_alSetError
1D6494:  MOV             R0, R4
1D6498:  POP             {R4-R7,R11,LR}
1D649C:  B               j_ALCcontext_DecRef
1D64A0:  LDR             R0, [R7,#0x14]; jumptable 001D6444 case 1
1D64A4:  SUB             R1, R0, #0x1400
1D64A8:  MOV             R0, #0
1D64AC:  CMP             R1, #6
1D64B0:  ADRLS           R0, dword_1D657C
1D64B4:  LDRLS           R0, [R0,R1,LSL#2]
1D64B8:  STR             R0, [R5]
1D64BC:  B               loc_1D6494
1D64C0:  LDR             R0, [R7,#0x10]; jumptable 001D6444 case 2
1D64C4:  MOV             R1, #0
1D64C8:  SUB             R0, R0, #0x1500
1D64CC:  CMP             R0, #6
1D64D0:  LDRLS           R1, =(unk_C5130 - 0x1D64DC)
1D64D4:  ADDLS           R1, PC, R1; unk_C5130
1D64D8:  LDRLS           R1, [R1,R0,LSL#2]
1D64DC:  STR             R1, [R5]
1D64E0:  B               loc_1D6494
1D64E4:  ADD             R6, R7, #0x30 ; '0'; jumptable 001D6444 case 3
1D64E8:  MOV             R0, R6
1D64EC:  BL              j_ReadLock
1D64F0:  ADD             R3, R7, #0xC
1D64F4:  MOV             R2, #0
1D64F8:  LDM             R3, {R0,R1,R3}
1D64FC:  SUB             R7, R1, #0x1500
1D6500:  SUB             R3, R3, #0x1400
1D6504:  CMP             R7, #6
1D6508:  MOV             R1, #0
1D650C:  LDRLS           R2, =(unk_C5130 - 0x1D6518)
1D6510:  ADDLS           R2, PC, R2; unk_C5130
1D6514:  LDRLS           R2, [R2,R7,LSL#2]
1D6518:  CMP             R3, #6
1D651C:  LDRLS           R1, =(unk_C5150 - 0x1D652C)
1D6520:  MUL             R0, R2, R0
1D6524:  ADDLS           R1, PC, R1; unk_C5150
1D6528:  LDRLS           R1, [R1,R3,LSL#2]
1D652C:  MUL             R0, R0, R1
1D6530:  STR             R0, [R5]
1D6534:  MOV             R0, R6
1D6538:  BL              j_ReadUnlock
1D653C:  B               loc_1D6494
1D6540:  MOV             R0, R4; jumptable 001D6444 default case, cases 4-6
1D6544:  MOVW            R1, #0xA002
1D6548:  B               loc_1D6490
1D654C:  LDR             R0, [R7,#8]; jumptable 001D6444 case 7
1D6550:  STR             R0, [R5]
1D6554:  B               loc_1D6494
1D6558:  LDR             R0, [R7,#0x20]; jumptable 001D6444 case 8
1D655C:  STR             R0, [R5]
1D6560:  B               loc_1D6494
1D6564:  LDR             R0, [R7,#0xC]; jumptable 001D6444 case 9
1D6568:  STR             R0, [R5]
1D656C:  B               loc_1D6494
