; =========================================================
; Game Engine Function: alSourcei64SOFT
; Address            : 0x258690 - 0x2587C4
; =========================================================

258690:  PUSH            {R4-R7,LR}
258692:  ADD             R7, SP, #0xC
258694:  PUSH.W          {R11}
258698:  SUB             SP, SP, #8
25869A:  MOV             R5, R1
25869C:  MOV             R6, R0
25869E:  STRD.W          R2, R3, [SP,#0x18+var_18]
2586A2:  BLX             j_GetContextRef
2586A6:  MOV             R4, R0
2586A8:  CMP             R4, #0
2586AA:  BEQ             loc_258706
2586AC:  ADD.W           R0, R4, #8
2586B0:  MOV             R1, R6
2586B2:  BLX             j_LookupUIntMapKey
2586B6:  CMP             R0, #0
2586B8:  BEQ             loc_25870E
2586BA:  CMP.W           R5, #0xC000
2586BE:  BGE.W           loc_258744
2586C2:  MOVW            R1, #0x1001
2586C6:  SUBS            R1, R5, R1
2586C8:  CMP             R1, #0x32 ; '2'; switch 51 cases
2586CA:  BHI.W           def_2586CE; jumptable 002586CE default case
2586CE:  TBB.W           [PC,R1]; switch jump
2586D2:  DCB 0x4A; jump table for switch statement
2586D3:  DCB 0x4A
2586D4:  DCB 0x54
2586D5:  DCB 0x54
2586D6:  DCB 0x54
2586D7:  DCB 0x54
2586D8:  DCB 0x4A
2586D9:  DCB 0x54
2586DA:  DCB 0x4A
2586DB:  DCB 0x54
2586DC:  DCB 0x54
2586DD:  DCB 0x54
2586DE:  DCB 0x54
2586DF:  DCB 0x54
2586E0:  DCB 0x54
2586E1:  DCB 0x4A
2586E2:  DCB 0x54
2586E3:  DCB 0x54
2586E4:  DCB 0x54
2586E5:  DCB 0x54
2586E6:  DCB 0x4A
2586E7:  DCB 0x4A
2586E8:  DCB 0x54
2586E9:  DCB 0x54
2586EA:  DCB 0x54
2586EB:  DCB 0x54
2586EC:  DCB 0x54
2586ED:  DCB 0x54
2586EE:  DCB 0x54
2586EF:  DCB 0x54
2586F0:  DCB 0x54
2586F1:  DCB 0x4A
2586F2:  DCB 0x4A
2586F3:  DCB 0x54
2586F4:  DCB 0x4A
2586F5:  DCB 0x4A
2586F6:  DCB 0x4A
2586F7:  DCB 0x4A
2586F8:  DCB 0x4A
2586F9:  DCB 0x54
2586FA:  DCB 0x54
2586FB:  DCB 0x54
2586FC:  DCB 0x54
2586FD:  DCB 0x54
2586FE:  DCB 0x54
2586FF:  DCB 0x54
258700:  DCB 0x54
258701:  DCB 0x54
258702:  DCB 0x54
258703:  DCB 0x54
258704:  DCB 0x4A
258705:  ALIGN 2
258706:  ADD             SP, SP, #8
258708:  POP.W           {R11}
25870C:  POP             {R4-R7,PC}
25870E:  LDR             R0, =(TrapALError_ptr - 0x258714)
258710:  ADD             R0, PC; TrapALError_ptr
258712:  LDR             R0, [R0]; TrapALError
258714:  LDRB            R0, [R0]
258716:  CMP             R0, #0
258718:  ITT NE
25871A:  MOVNE           R0, #5; sig
25871C:  BLXNE           raise
258720:  LDREX.W         R0, [R4,#0x50]
258724:  CMP             R0, #0
258726:  BNE             loc_2587AC
258728:  ADD.W           R0, R4, #0x50 ; 'P'
25872C:  MOVW            R1, #0xA001
258730:  DMB.W           ISH
258734:  STREX.W         R2, R1, [R0]
258738:  CBZ             R2, loc_2587B0
25873A:  LDREX.W         R2, [R0]
25873E:  CMP             R2, #0
258740:  BEQ             loc_258734
258742:  B               loc_2587AC
258744:  SUB.W           R1, R5, #0x20000
258748:  SUBS            R1, #5
25874A:  CMP             R1, #7
25874C:  BHI             loc_25875A
25874E:  MOVS            R2, #1
258750:  LSL.W           R1, R2, R1
258754:  TST.W           R1, #0xE1
258758:  BNE             loc_258766; jumptable 002586CE cases 0,1,6,8,15,20,21,31,32,34-38,50
25875A:  CMP.W           R5, #0xC000
25875E:  IT NE
258760:  CMPNE.W         R5, #0xD000
258764:  BNE             loc_25877A; jumptable 002586CE cases 2-5,7,9-14,16-19,22-30,33,39-49
258766:  MOV             R3, SP; jumptable 002586CE cases 0,1,6,8,15,20,21,31,32,34-38,50
258768:  MOV             R1, R4
25876A:  MOV             R2, R5
25876C:  BL              sub_2587CC
258770:  B               loc_2587B4
258772:  MOVW            R1, #0x202; jumptable 002586CE default case
258776:  CMP             R5, R1
258778:  BEQ             loc_258766; jumptable 002586CE cases 0,1,6,8,15,20,21,31,32,34-38,50
25877A:  LDR             R0, =(TrapALError_ptr - 0x258780); jumptable 002586CE cases 2-5,7,9-14,16-19,22-30,33,39-49
25877C:  ADD             R0, PC; TrapALError_ptr
25877E:  LDR             R0, [R0]; TrapALError
258780:  LDRB            R0, [R0]
258782:  CMP             R0, #0
258784:  ITT NE
258786:  MOVNE           R0, #5; sig
258788:  BLXNE           raise
25878C:  LDREX.W         R0, [R4,#0x50]
258790:  CBNZ            R0, loc_2587AC
258792:  ADD.W           R0, R4, #0x50 ; 'P'
258796:  MOVW            R1, #0xA002
25879A:  DMB.W           ISH
25879E:  STREX.W         R2, R1, [R0]
2587A2:  CBZ             R2, loc_2587B0
2587A4:  LDREX.W         R2, [R0]
2587A8:  CMP             R2, #0
2587AA:  BEQ             loc_25879E
2587AC:  CLREX.W
2587B0:  DMB.W           ISH
2587B4:  MOV             R0, R4
2587B6:  ADD             SP, SP, #8
2587B8:  POP.W           {R11}
2587BC:  POP.W           {R4-R7,LR}
2587C0:  B.W             ALCcontext_DecRef
