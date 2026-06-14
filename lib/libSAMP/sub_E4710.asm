; =========================================================
; Game Engine Function: sub_E4710
; Address            : 0xE4710 - 0xE47D6
; =========================================================

E4710:  PUSH            {R4-R7,LR}
E4712:  ADD             R7, SP, #0xC
E4714:  PUSH.W          {R11}
E4718:  SUB             SP, SP, #0x30
E471A:  MOV             R5, R0
E471C:  LDRB            R0, [R0]
E471E:  MOV             R4, R1
E4720:  CBNZ            R0, loc_E473C
E4722:  MOVS            R0, #1
E4724:  STRB            R0, [R5]
E4726:  MOVS            R0, #0xC; unsigned int
E4728:  BLX             j__Znwj; operator new(uint)
E472C:  MOVS            R1, #0
E472E:  MOV             R2, R0
E4730:  STR.W           R1, [R2,#4]!
E4734:  STR             R1, [R0,#8]
E4736:  STR             R2, [R0]
E4738:  STR             R0, [R5,#8]
E473A:  B               loc_E4740
E473C:  CMP             R0, #1
E473E:  BNE             loc_E4780
E4740:  ADD             R6, SP, #0x40+var_28
E4742:  MOV             R1, R4; s
E4744:  LDR             R5, [R5,#8]
E4746:  MOV             R0, R6; int
E4748:  BL              sub_DC6DC
E474C:  LDR             R3, =(unk_9216D - 0xE4754)
E474E:  STR             R6, [SP,#0x40+var_14]
E4750:  ADD             R3, PC; unk_9216D
E4752:  ADD             R0, SP, #0x40+var_18
E4754:  ADD             R1, SP, #0x40+var_14
E4756:  MOV             R2, R6
E4758:  STRD.W          R1, R0, [SP,#0x40+var_40]
E475C:  ADD             R0, SP, #0x40+var_34
E475E:  MOV             R1, R5
E4760:  BL              sub_EBE18
E4764:  LDRB.W          R0, [SP,#0x40+var_28]
E4768:  LDR             R4, [SP,#0x40+var_34]
E476A:  LSLS            R0, R0, #0x1F
E476C:  ITT NE
E476E:  LDRNE           R0, [SP,#0x40+var_20]; void *
E4770:  BLXNE           j__ZdlPv; operator delete(void *)
E4774:  ADD.W           R0, R4, #0x20 ; ' '
E4778:  ADD             SP, SP, #0x30 ; '0'
E477A:  POP.W           {R11}
E477E:  POP             {R4-R7,PC}
E4780:  MOVS            R0, #0x10; thrown_size
E4782:  BLX             j___cxa_allocate_exception
E4786:  MOV             R4, R0
E4788:  MOV             R0, R5
E478A:  BL              sub_E9DFC
E478E:  MOV             R1, R0; s
E4790:  ADD             R0, SP, #0x40+var_34; int
E4792:  BL              sub_DC6DC
E4796:  LDR             R2, =(aCannotUseOpera - 0xE479C); "cannot use operator[] with a string arg"... ...
E4798:  ADD             R2, PC; "cannot use operator[] with a string arg"...
E479A:  ADD             R0, SP, #0x40+var_34; int
E479C:  MOVS            R1, #0; int
E479E:  MOVS            R6, #0
E47A0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E47A4:  VLDR            D16, [R0]
E47A8:  LDR             R1, [R0,#8]
E47AA:  STR             R1, [SP,#0x40+var_20]
E47AC:  VSTR            D16, [SP,#0x40+var_28]
E47B0:  STRD.W          R6, R6, [R0]
E47B4:  STR             R6, [R0,#8]
E47B6:  MOVS            R6, #1
E47B8:  ADD             R2, SP, #0x40+var_28
E47BA:  MOV             R0, R4
E47BC:  MOVW            R1, #0x131
E47C0:  MOV             R3, R5
E47C2:  BL              sub_E9CB0
E47C6:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE47D0); `typeinfo for'nlohmann::detail::type_error ...
E47C8:  MOVS            R6, #0
E47CA:  LDR             R2, =(sub_E9438+1 - 0xE47D2)
E47CC:  ADD             R1, PC; lptinfo
E47CE:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E47D0:  MOV             R0, R4; void *
E47D2:  BLX             j___cxa_throw
