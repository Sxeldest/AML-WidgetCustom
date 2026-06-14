; =========================================================
; Game Engine Function: sub_EC634
; Address            : 0xEC634 - 0xEC6C4
; =========================================================

EC634:  PUSH            {R4-R7,LR}
EC636:  ADD             R7, SP, #0xC
EC638:  PUSH.W          {R11}
EC63C:  SUB             SP, SP, #0x20
EC63E:  MOV             R5, R0
EC640:  LDRB            R0, [R0]
EC642:  SUBS            R0, #4; switch 4 cases
EC644:  CMP             R0, #3
EC646:  BHI             def_EC648; jumptable 000EC648 default case
EC648:  TBB.W           [PC,R0]; switch jump
EC64C:  DCB 4; jump table for switch statement
EC64D:  DCB 2
EC64E:  DCB 2
EC64F:  DCB 6
EC650:  LDR             R0, [R5,#8]; jumptable 000EC648 cases 5,6
EC652:  B               loc_EC664
EC654:  LDRB            R0, [R5,#8]; jumptable 000EC648 case 4
EC656:  B               loc_EC664
EC658:  VLDR            D16, [R5,#8]; jumptable 000EC648 case 7
EC65C:  VCVT.S32.F64    S0, D16
EC660:  VMOV            R0, S0
EC664:  STR             R0, [R1]
EC666:  ADD             SP, SP, #0x20 ; ' '
EC668:  POP.W           {R11}
EC66C:  POP             {R4-R7,PC}
EC66E:  MOVS            R0, #0x10; jumptable 000EC648 default case
EC670:  BLX             j___cxa_allocate_exception
EC674:  MOV             R4, R0
EC676:  MOV             R0, R5
EC678:  BL              sub_E9DFC
EC67C:  MOV             R1, R0; s
EC67E:  ADD             R0, SP, #0x30+var_2C; int
EC680:  BL              sub_DC6DC
EC684:  LDR             R2, =(aTypeMustBeNumb - 0xEC68A); "type must be number, but is " ...
EC686:  ADD             R2, PC; "type must be number, but is "
EC688:  ADD             R0, SP, #0x30+var_2C; int
EC68A:  MOVS            R1, #0; int
EC68C:  MOVS            R6, #0
EC68E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EC692:  VLDR            D16, [R0]
EC696:  LDR             R1, [R0,#8]
EC698:  STR             R1, [SP,#0x30+var_18]
EC69A:  VSTR            D16, [SP,#0x30+var_20]
EC69E:  STRD.W          R6, R6, [R0]
EC6A2:  STR             R6, [R0,#8]
EC6A4:  MOVS            R6, #1
EC6A6:  ADD             R2, SP, #0x30+var_20
EC6A8:  MOV             R0, R4
EC6AA:  MOV.W           R1, #0x12E
EC6AE:  MOV             R3, R5
EC6B0:  BL              sub_E9CB0
EC6B4:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xEC6BE); `typeinfo for'nlohmann::detail::type_error ...
EC6B6:  MOVS            R6, #0
EC6B8:  LDR             R2, =(sub_E9438+1 - 0xEC6C0)
EC6BA:  ADD             R1, PC; lptinfo
EC6BC:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC6BE:  MOV             R0, R4; void *
EC6C0:  BLX             j___cxa_throw
