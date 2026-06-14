; =========================================================
; Game Engine Function: sub_E15D8
; Address            : 0xE15D8 - 0xE17BC
; =========================================================

E15D8:  PUSH            {R4-R7,LR}
E15DA:  ADD             R7, SP, #0xC
E15DC:  PUSH.W          {R8,R9,R11}
E15E0:  VPUSH           {D8}
E15E4:  SUB.W           SP, SP, #0x240
E15E8:  MOV             R5, R1
E15EA:  MOV             R9, R0
E15EC:  LDRD.W          R1, R0, [R7,#arg_0]
E15F0:  ADD             R6, SP, #0x260+var_38
E15F2:  ADD.W           R8, SP, #0x260+var_240
E15F6:  STRD.W          R1, R0, [SP,#0x260+var_28]
E15FA:  ADD             R1, SP, #0x260+var_30; int
E15FC:  STRD.W          R2, R3, [SP,#0x260+var_30]
E1600:  MOV             R0, R6; int
E1602:  MOV             R2, R8; this
E1604:  BL              sub_E17E4
E1608:  LDRH.W          R0, [SP,#0x260+var_28+1]
E160C:  MOV.W           R1, #0x700
E1610:  LDR             R3, [SP,#0x260+var_34]
E1612:  VMOV            S16, R5
E1616:  CMP.W           R5, #0xFFFFFFFF
E161A:  AND.W           R2, R1, R0,LSL#4
E161E:  BIC.W           R4, R3, #0xFF00
E1622:  ADD.W           R1, R4, R2
E1626:  STR             R1, [SP,#0x260+var_34]
E1628:  BLE             loc_E1634
E162A:  CMP.W           R2, #0x100
E162E:  BEQ             loc_E163C
E1630:  MOV             R4, R1
E1632:  B               loc_E163E
E1634:  VNEG.F32        S16, S16
E1638:  ORR.W           R4, R4, #0x100
E163C:  STR             R4, [SP,#0x260+var_34]
E163E:  VABS.F32        S0, S16
E1642:  VLDR            S2, =+Inf
E1646:  VCMP.F32        S0, S2
E164A:  VMRS            APSR_nzcv, FPSCR
E164E:  BMI             loc_E1654
E1650:  BGT             loc_E1654
E1652:  B               loc_E1704
E1654:  AND.W           R0, R0, #0xF
E1658:  CMP             R0, #4
E165A:  BNE             loc_E16A0
E165C:  ANDS.W          R0, R4, #0xFF00
E1660:  BEQ             loc_E16A0
E1662:  LDR             R1, =(unk_91D45 - 0xE1670)
E1664:  UBFX.W          R3, R4, #8, #8
E1668:  LDRD.W          R0, R2, [R9,#8]
E166C:  ADD             R1, PC; unk_91D45
E166E:  LDRB            R4, [R1,R3]
E1670:  ADDS            R1, R0, #1
E1672:  CMP             R2, R1
E1674:  BCS             loc_E1686
E1676:  LDR.W           R0, [R9]
E167A:  LDR             R2, [R0]
E167C:  MOV             R0, R9
E167E:  BLX             R2
E1680:  LDR.W           R0, [R9,#8]
E1684:  ADDS            R1, R0, #1
E1686:  LDR.W           R2, [R9,#4]
E168A:  STR.W           R1, [R9,#8]
E168E:  STRB            R4, [R2,R0]
E1690:  LDRD.W          R1, R0, [SP,#0x260+var_34]
E1694:  BIC.W           R4, R1, #0xFF00
E1698:  STR             R4, [SP,#0x260+var_34]
E169A:  CBZ             R0, loc_E16A0
E169C:  SUBS            R0, #1
E169E:  STR             R0, [SP,#0x260+var_30]
E16A0:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xE16B2); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
E16A2:  MOV.W           R1, #0x1F4
E16A6:  STR             R1, [SP,#0x260+var_234]
E16A8:  ADD.W           R5, R8, #0x10
E16AC:  MOVS            R1, #0
E16AE:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
E16B0:  STR             R1, [SP,#0x260+var_238]
E16B2:  UXTB            R1, R4
E16B4:  CMP             R1, #3
E16B6:  ADD.W           R0, R0, #8
E16BA:  STR             R5, [SP,#0x260+var_23C]
E16BC:  STR             R0, [SP,#0x260+var_240]
E16BE:  BNE             loc_E172A
E16C0:  TST.W           R4, #0xFF00
E16C4:  BEQ             loc_E16D8
E16C6:  LDR             R0, =(unk_91D45 - 0xE16D0)
E16C8:  UBFX.W          R1, R4, #8, #8
E16CC:  ADD             R0, PC; unk_91D45
E16CE:  LDRB            R0, [R0,R1]
E16D0:  MOVS            R1, #1
E16D2:  STR             R1, [SP,#0x260+var_238]
E16D4:  STRB.W          R0, [SP,#0x260+var_230]
E16D8:  VCVT.F64.F32    D16, S16
E16DC:  LDR             R3, [SP,#0x260+var_38]
E16DE:  LDR             R2, [SP,#0x260+var_2C]
E16E0:  VMOV            R0, R1, D16
E16E4:  STRD.W          R4, R8, [SP,#0x260+var_260]
E16E8:  BL              sub_E1894
E16EC:  LDRD.W          R0, R2, [SP,#0x260+var_23C]
E16F0:  STRD.W          R0, R2, [SP,#0x260+var_250]
E16F4:  ADD             R0, SP, #0x260+var_250
E16F6:  ADD             R1, SP, #0x260+var_30
E16F8:  STR             R0, [SP,#0x260+var_260]
E16FA:  MOV             R0, R9
E16FC:  MOV             R3, R2
E16FE:  BL              sub_E1A8C
E1702:  B               loc_E1798
E1704:  LDRD.W          R0, R1, [SP,#0x260+var_28]
E1708:  VCMP.F32        S16, S16
E170C:  LDRD.W          R2, R3, [SP,#0x260+var_30]
E1710:  VMRS            APSR_nzcv, FPSCR
E1714:  STMEA.W         SP, {R0,R1,R6}
E1718:  MOV.W           R1, #0
E171C:  MOV             R0, R9
E171E:  IT VS
E1720:  MOVVS           R1, #1
E1722:  BL              sub_DE2CC
E1726:  MOV             R4, R0
E1728:  B               loc_E17A4
E172A:  LDR             R2, [SP,#0x260+var_2C]
E172C:  LDRB.W          R0, [SP,#0x260+var_28]
E1730:  CMP             R0, #0
E1732:  MOV             R0, R2
E1734:  IT NE
E1736:  MOVNE           R0, #6
E1738:  CMP.W           R2, #0xFFFFFFFF
E173C:  IT GT
E173E:  MOVGT           R0, R2
E1740:  CMP             R1, #1
E1742:  BNE             loc_E1750
E1744:  MOV             R1, #0x7FFFFFFF; char *
E1748:  CMP             R0, R1
E174A:  BEQ             loc_E17B4
E174C:  ADDS            R6, R0, #1
E174E:  B               loc_E175E
E1750:  MOV             R6, R0
E1752:  CMP             R0, #0
E1754:  IT EQ
E1756:  MOVEQ           R6, #1
E1758:  CMP             R1, #2
E175A:  IT EQ
E175C:  MOVEQ           R6, R0
E175E:  VCVT.F64.F32    D16, S16
E1762:  ORR.W           R2, R4, #0x40000
E1766:  LDR             R3, [SP,#0x260+var_38]; int
E1768:  STR             R2, [SP,#0x260+var_34]
E176A:  VMOV            R0, R1, D16; int
E176E:  STRD.W          R2, R8, [SP,#0x260+var_260]; int
E1772:  MOV             R2, R6; n
E1774:  BLX             j__ZN3fmt2v86detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE; fmt::v8::detail::format_float<double>(double,int,fmt::v8::detail::float_specs,fmt::v8::detail::buffer<char> &)
E1778:  LDR             R1, [R7,#arg_8]
E177A:  LDRD.W          R2, R3, [SP,#0x260+var_23C]
E177E:  LDR             R4, [SP,#0x260+var_34]
E1780:  STR             R6, [SP,#0x260+var_38]
E1782:  STR             R0, [SP,#0x260+var_248]
E1784:  STRD.W          R2, R3, [SP,#0x260+var_250]
E1788:  STRD.W          R4, R1, [SP,#0x260+var_260]; int
E178C:  ADD             R1, SP, #0x260+var_250; int
E178E:  ADD             R2, SP, #0x260+var_30; int
E1790:  MOV             R0, R9; int
E1792:  MOV             R3, R6; int
E1794:  BL              sub_E1AF4
E1798:  MOV             R4, R0
E179A:  LDR             R0, [SP,#0x260+var_23C]; void *
E179C:  CMP             R0, R5
E179E:  BEQ             loc_E17A4
E17A0:  BLX             j__ZdlPv; operator delete(void *)
E17A4:  MOV             R0, R4
E17A6:  ADD.W           SP, SP, #0x240
E17AA:  VPOP            {D8}
E17AE:  POP.W           {R8,R9,R11}
E17B2:  POP             {R4-R7,PC}
E17B4:  LDR             R0, =(aNumberIsTooBig - 0xE17BA); "number is too big" ...
E17B6:  ADD             R0, PC; "number is too big"
E17B8:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
