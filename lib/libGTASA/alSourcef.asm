; =========================================================
; Game Engine Function: alSourcef
; Address            : 0x25671C - 0x256838
; =========================================================

25671C:  PUSH            {R4-R7,LR}
25671E:  ADD             R7, SP, #0xC
256720:  PUSH.W          {R11}
256724:  SUB             SP, SP, #8
256726:  MOV             R5, R1
256728:  MOV             R6, R0
25672A:  STR             R2, [SP,#0x18+var_14]
25672C:  BLX             j_GetContextRef
256730:  MOV             R4, R0
256732:  CMP             R4, #0
256734:  BEQ.W           loc_256830
256738:  ADD.W           R0, R4, #8
25673C:  MOV             R1, R6
25673E:  BLX             j_LookupUIntMapKey
256742:  CMP             R0, #0
256744:  BEQ             loc_256792
256746:  CMP.W           R5, #0xC000
25674A:  BGE.W           loc_2567C6
25674E:  MOVW            R1, #0x1001
256752:  SUBS            R1, R5, R1
256754:  CMP             R1, #0x32 ; '2'; switch 51 cases
256756:  BHI.W           def_25675A; jumptable 0025675A default case
25675A:  TBB.W           [PC,R1]; switch jump
25675E:  DCB 0x3F; jump table for switch statement
25675F:  DCB 0x3F
256760:  DCB 0x3F
256761:  DCB 0x49
256762:  DCB 0x49
256763:  DCB 0x49
256764:  DCB 0x3F
256765:  DCB 0x49
256766:  DCB 0x3F
256767:  DCB 0x3F
256768:  DCB 0x49
256769:  DCB 0x49
25676A:  DCB 0x3F
25676B:  DCB 0x3F
25676C:  DCB 0x49
25676D:  DCB 0x3F
25676E:  DCB 0x49
25676F:  DCB 0x49
256770:  DCB 0x49
256771:  DCB 0x49
256772:  DCB 0x3F
256773:  DCB 0x3F
256774:  DCB 0x49
256775:  DCB 0x49
256776:  DCB 0x49
256777:  DCB 0x49
256778:  DCB 0x49
256779:  DCB 0x49
25677A:  DCB 0x49
25677B:  DCB 0x49
25677C:  DCB 0x49
25677D:  DCB 0x3F
25677E:  DCB 0x3F
25677F:  DCB 0x3F
256780:  DCB 0x3F
256781:  DCB 0x3F
256782:  DCB 0x3F
256783:  DCB 0x3F
256784:  DCB 0x3F
256785:  DCB 0x49
256786:  DCB 0x49
256787:  DCB 0x49
256788:  DCB 0x49
256789:  DCB 0x49
25678A:  DCB 0x49
25678B:  DCB 0x49
25678C:  DCB 0x49
25678D:  DCB 0x49
25678E:  DCB 0x49
25678F:  DCB 0x49
256790:  DCB 0x3F
256791:  ALIGN 2
256792:  LDR             R0, =(TrapALError_ptr - 0x256798)
256794:  ADD             R0, PC; TrapALError_ptr
256796:  LDR             R0, [R0]; TrapALError
256798:  LDRB            R0, [R0]
25679A:  CMP             R0, #0
25679C:  ITT NE
25679E:  MOVNE           R0, #5; sig
2567A0:  BLXNE           raise
2567A4:  LDREX.W         R0, [R4,#0x50]
2567A8:  CBNZ            R0, loc_256822
2567AA:  ADD.W           R0, R4, #0x50 ; 'P'
2567AE:  MOVW            R1, #0xA001
2567B2:  DMB.W           ISH
2567B6:  STREX.W         R2, R1, [R0]
2567BA:  CBZ             R2, loc_256826
2567BC:  LDREX.W         R2, [R0]
2567C0:  CMP             R2, #0
2567C2:  BEQ             loc_2567B6
2567C4:  B               loc_256822
2567C6:  SUB.W           R1, R5, #0x20000
2567CA:  SUBS            R1, #7
2567CC:  CMP             R1, #6
2567CE:  BCC             loc_2567DC; jumptable 0025675A cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2567D0:  CMP.W           R5, #0xC000
2567D4:  IT NE
2567D6:  CMPNE.W         R5, #0xD000
2567DA:  BNE             loc_2567F0; jumptable 0025675A cases 3-5,7,10,11,14,16-19,22-30,39-49
2567DC:  ADD             R3, SP, #0x18+var_14; jumptable 0025675A cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2567DE:  MOV             R1, R4
2567E0:  MOV             R2, R5
2567E2:  BL              sub_256840
2567E6:  B               loc_25682A
2567E8:  MOVW            R1, #0x202; jumptable 0025675A default case
2567EC:  CMP             R5, R1
2567EE:  BEQ             loc_2567DC; jumptable 0025675A cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2567F0:  LDR             R0, =(TrapALError_ptr - 0x2567F6); jumptable 0025675A cases 3-5,7,10,11,14,16-19,22-30,39-49
2567F2:  ADD             R0, PC; TrapALError_ptr
2567F4:  LDR             R0, [R0]; TrapALError
2567F6:  LDRB            R0, [R0]
2567F8:  CMP             R0, #0
2567FA:  ITT NE
2567FC:  MOVNE           R0, #5; sig
2567FE:  BLXNE           raise
256802:  LDREX.W         R0, [R4,#0x50]
256806:  CBNZ            R0, loc_256822
256808:  ADD.W           R0, R4, #0x50 ; 'P'
25680C:  MOVW            R1, #0xA002
256810:  DMB.W           ISH
256814:  STREX.W         R2, R1, [R0]
256818:  CBZ             R2, loc_256826
25681A:  LDREX.W         R2, [R0]
25681E:  CMP             R2, #0
256820:  BEQ             loc_256814
256822:  CLREX.W
256826:  DMB.W           ISH
25682A:  MOV             R0, R4
25682C:  BLX             j_ALCcontext_DecRef
256830:  ADD             SP, SP, #8
256832:  POP.W           {R11}
256836:  POP             {R4-R7,PC}
