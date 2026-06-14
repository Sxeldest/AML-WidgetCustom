; =========================================================
; Game Engine Function: alGetSourcei64vSOFT
; Address            : 0x25A5B0 - 0x25A732
; =========================================================

25A5B0:  PUSH            {R4-R7,LR}
25A5B2:  ADD             R7, SP, #0xC
25A5B4:  PUSH.W          {R8}
25A5B8:  MOV             R8, R2
25A5BA:  MOV             R6, R1
25A5BC:  MOV             R5, R0
25A5BE:  BLX             j_GetContextRef
25A5C2:  MOV             R4, R0
25A5C4:  CMP             R4, #0
25A5C6:  BEQ.W           loc_25A63A
25A5CA:  ADD.W           R0, R4, #8
25A5CE:  MOV             R1, R5
25A5D0:  BLX             j_LookupUIntMapKey
25A5D4:  CMP             R0, #0
25A5D6:  BEQ.W           loc_25A640
25A5DA:  CMP.W           R8, #0
25A5DE:  BEQ.W           loc_25A674
25A5E2:  CMP.W           R6, #0x1200
25A5E6:  BGE.W           loc_25A6BC
25A5EA:  MOVW            R1, #0x1001
25A5EE:  SUBS            R1, R6, R1
25A5F0:  CMP             R1, #0x32 ; '2'; switch 51 cases
25A5F2:  BHI.W           def_25A5F6; jumptable 0025A5F6 default case
25A5F6:  TBB.W           [PC,R1]; switch jump
25A5FA:  DCB 0x1A; jump table for switch statement
25A5FB:  DCB 0x1A
25A5FC:  DCB 0x80
25A5FD:  DCB 0x1A
25A5FE:  DCB 0x1A
25A5FF:  DCB 0x1A
25A600:  DCB 0x1A
25A601:  DCB 0x80
25A602:  DCB 0x1A
25A603:  DCB 0x80
25A604:  DCB 0x80
25A605:  DCB 0x80
25A606:  DCB 0x80
25A607:  DCB 0x80
25A608:  DCB 0x80
25A609:  DCB 0x1A
25A60A:  DCB 0x80
25A60B:  DCB 0x80
25A60C:  DCB 0x80
25A60D:  DCB 0x80
25A60E:  DCB 0x1A
25A60F:  DCB 0x1A
25A610:  DCB 0x80
25A611:  DCB 0x80
25A612:  DCB 0x80
25A613:  DCB 0x80
25A614:  DCB 0x80
25A615:  DCB 0x80
25A616:  DCB 0x80
25A617:  DCB 0x80
25A618:  DCB 0x80
25A619:  DCB 0x1A
25A61A:  DCB 0x1A
25A61B:  DCB 0x80
25A61C:  DCB 0x1A
25A61D:  DCB 0x1A
25A61E:  DCB 0x1A
25A61F:  DCB 0x1A
25A620:  DCB 0x1A
25A621:  DCB 0x80
25A622:  DCB 0x80
25A623:  DCB 0x80
25A624:  DCB 0x80
25A625:  DCB 0x80
25A626:  DCB 0x80
25A627:  DCB 0x80
25A628:  DCB 0x80
25A629:  DCB 0x80
25A62A:  DCB 0x1A
25A62B:  DCB 0x1A
25A62C:  DCB 0x1A
25A62D:  ALIGN 2
25A62E:  MOV             R1, R4; jumptable 0025A5F6 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25A630:  MOV             R2, R6
25A632:  MOV             R3, R8
25A634:  BL              sub_25A180
25A638:  B               loc_25A6AE
25A63A:  POP.W           {R8}
25A63E:  POP             {R4-R7,PC}
25A640:  LDR             R0, =(TrapALError_ptr - 0x25A646)
25A642:  ADD             R0, PC; TrapALError_ptr
25A644:  LDR             R0, [R0]; TrapALError
25A646:  LDRB            R0, [R0]
25A648:  CMP             R0, #0
25A64A:  ITT NE
25A64C:  MOVNE           R0, #5; sig
25A64E:  BLXNE           raise
25A652:  LDREX.W         R0, [R4,#0x50]
25A656:  CBNZ            R0, loc_25A6A6
25A658:  ADD.W           R0, R4, #0x50 ; 'P'
25A65C:  MOVW            R1, #0xA001
25A660:  DMB.W           ISH
25A664:  STREX.W         R2, R1, [R0]
25A668:  CBZ             R2, loc_25A6AA
25A66A:  LDREX.W         R2, [R0]
25A66E:  CMP             R2, #0
25A670:  BEQ             loc_25A664
25A672:  B               loc_25A6A6
25A674:  LDR             R0, =(TrapALError_ptr - 0x25A67A)
25A676:  ADD             R0, PC; TrapALError_ptr
25A678:  LDR             R0, [R0]; TrapALError
25A67A:  LDRB            R0, [R0]
25A67C:  CMP             R0, #0
25A67E:  ITT NE
25A680:  MOVNE           R0, #5; sig
25A682:  BLXNE           raise
25A686:  LDREX.W         R0, [R4,#0x50]
25A68A:  CBNZ            R0, loc_25A6A6
25A68C:  ADD.W           R0, R4, #0x50 ; 'P'
25A690:  MOVW            R1, #0xA003
25A694:  DMB.W           ISH
25A698:  STREX.W         R2, R1, [R0]
25A69C:  CBZ             R2, loc_25A6AA
25A69E:  LDREX.W         R2, [R0]
25A6A2:  CMP             R2, #0
25A6A4:  BEQ             loc_25A698
25A6A6:  CLREX.W
25A6AA:  DMB.W           ISH
25A6AE:  MOV             R0, R4
25A6B0:  POP.W           {R8}
25A6B4:  POP.W           {R4-R7,LR}
25A6B8:  B.W             ALCcontext_DecRef
25A6BC:  MOVS            R1, #0x20004
25A6C2:  CMP             R6, R1
25A6C4:  BLE             loc_25A6DE
25A6C6:  SUB.W           R1, R6, #0x20000
25A6CA:  SUBS            R1, #5
25A6CC:  CMP             R1, #7
25A6CE:  BHI             loc_25A6FA; jumptable 0025A5F6 cases 2,7,9-14,16-19,22-30,33,39-47
25A6D0:  MOVS            R2, #1
25A6D2:  LSL.W           R1, R2, R1
25A6D6:  TST.W           R1, #0xE3
25A6DA:  BNE             loc_25A62E; jumptable 0025A5F6 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25A6DC:  B               loc_25A6FA; jumptable 0025A5F6 cases 2,7,9-14,16-19,22-30,33,39-47
25A6DE:  CMP.W           R6, #0x1200
25A6E2:  IT NE
25A6E4:  CMPNE.W         R6, #0xC000
25A6E8:  BEQ             loc_25A62E; jumptable 0025A5F6 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25A6EA:  CMP.W           R6, #0xD000
25A6EE:  BEQ             loc_25A62E; jumptable 0025A5F6 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25A6F0:  B               loc_25A6FA; jumptable 0025A5F6 cases 2,7,9-14,16-19,22-30,33,39-47
25A6F2:  MOVW            R1, #0x202; jumptable 0025A5F6 default case
25A6F6:  CMP             R6, R1
25A6F8:  BEQ             loc_25A62E; jumptable 0025A5F6 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25A6FA:  LDR             R0, =(TrapALError_ptr - 0x25A700); jumptable 0025A5F6 cases 2,7,9-14,16-19,22-30,33,39-47
25A6FC:  ADD             R0, PC; TrapALError_ptr
25A6FE:  LDR             R0, [R0]; TrapALError
25A700:  LDRB            R0, [R0]
25A702:  CMP             R0, #0
25A704:  ITT NE
25A706:  MOVNE           R0, #5; sig
25A708:  BLXNE           raise
25A70C:  LDREX.W         R0, [R4,#0x50]
25A710:  CMP             R0, #0
25A712:  BNE             loc_25A6A6
25A714:  ADD.W           R0, R4, #0x50 ; 'P'
25A718:  MOVW            R1, #0xA002
25A71C:  DMB.W           ISH
25A720:  STREX.W         R2, R1, [R0]
25A724:  CMP             R2, #0
25A726:  BEQ             loc_25A6AA
25A728:  LDREX.W         R2, [R0]
25A72C:  CMP             R2, #0
25A72E:  BEQ             loc_25A720
25A730:  B               loc_25A6A6
