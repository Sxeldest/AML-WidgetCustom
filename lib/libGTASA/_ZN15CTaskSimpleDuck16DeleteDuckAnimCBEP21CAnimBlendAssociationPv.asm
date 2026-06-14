; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x543404 - 0x54344E
; =========================================================

543404:  CMP             R0, #0
543406:  IT NE
543408:  CMPNE           R1, #0
54340A:  BEQ             locret_543438
54340C:  LDRSH.W         R2, [R0,#0x2C]
543410:  SUB.W           R0, R2, #0x37 ; '7'; switch 5 cases
543414:  CMP             R0, #4
543416:  BHI             def_543418; jumptable 00543418 default case
543418:  TBB.W           [PC,R0]; switch jump
54341C:  DCB 8; jump table for switch statement
54341D:  DCB 3
54341E:  DCB 0xF
54341F:  DCB 3
543420:  DCB 0xF
543421:  ALIGN 2
543422:  LDRB            R0, [R1,#0x19]; jumptable 00543418 cases 56,58
543424:  MOVS            R2, #0
543426:  B               loc_543440
543428:  CMP             R2, #0x8D; jumptable 00543418 default case
54342A:  BNE             locret_543438
54342C:  LDR             R0, [R1,#0x14]; jumptable 00543418 case 55
54342E:  MOVS            R2, #0
543430:  STR             R2, [R1,#0x10]
543432:  CBZ             R0, loc_543448
543434:  LDRB            R0, [R1,#0x19]
543436:  CBZ             R0, loc_543448
543438:  BX              LR
54343A:  LDRB            R0, [R1,#0x19]; jumptable 00543418 cases 57,59
54343C:  MOVS            R2, #0
54343E:  STR             R2, [R1,#0x1C]
543440:  CMP             R0, #0
543442:  STR             R2, [R1,#0x14]
543444:  IT EQ
543446:  BXEQ            LR
543448:  MOVS            R0, #1
54344A:  STRB            R0, [R1,#0x18]
54344C:  BX              LR
