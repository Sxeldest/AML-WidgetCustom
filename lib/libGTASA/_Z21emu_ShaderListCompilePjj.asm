; =========================================================
; Game Engine Function: _Z21emu_ShaderListCompilePjj
; Address            : 0x1C1710 - 0x1C1D5E
; =========================================================

1C1710:  PUSH            {R4-R7,LR}
1C1712:  ADD             R7, SP, #0xC
1C1714:  PUSH.W          {R8-R11}
1C1718:  SUB             SP, SP, #0x3C
1C171A:  STR             R0, [SP,#0x58+var_48]
1C171C:  MOV             R4, R1
1C171E:  LDR.W           R0, =(ShaderClosetInitialized_ptr - 0x1C1726)
1C1722:  ADD             R0, PC; ShaderClosetInitialized_ptr
1C1724:  LDR             R0, [R0]; ShaderClosetInitialized
1C1726:  LDRB            R0, [R0]
1C1728:  CBNZ            R0, loc_1C1756
1C172A:  LDR.W           R0, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C1736)
1C172E:  MOV.W           R1, #0x400
1C1732:  ADD             R0, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C1734:  LDR             R0, [R0]; EmuShader::ShaderCloset ...
1C1736:  BLX             j___aeabi_memclr8_0
1C173A:  LDR.W           R0, =(ShaderClosetInitialized_ptr - 0x1C1748)
1C173E:  MOVS            R2, #1
1C1740:  LDR.W           R1, =(curAssignedShader_ptr - 0x1C174A)
1C1744:  ADD             R0, PC; ShaderClosetInitialized_ptr
1C1746:  ADD             R1, PC; curAssignedShader_ptr
1C1748:  LDR             R0, [R0]; ShaderClosetInitialized
1C174A:  LDR             R1, [R1]; curAssignedShader
1C174C:  STRB            R2, [R0]
1C174E:  MOVS            R0, #0
1C1750:  STR             R0, [R1]
1C1752:  BLX             j__Z15InitShaderCachev; InitShaderCache(void)
1C1756:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1C1760)
1C175A:  CMP             R4, #0
1C175C:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C175E:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C1760:  LDRB            R1, [R0]
1C1762:  BEQ.W           loc_1C1CA8
1C1766:  LDR.W           R0, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C1776)
1C176A:  MOVS            R6, #0
1C176C:  STR             R1, [SP,#0x58+var_58]
1C176E:  MOVT            R6, #0xBF80
1C1772:  ADD             R0, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C1774:  MOVS            R1, #0
1C1776:  STR             R4, [SP,#0x58+var_50]
1C1778:  LDR             R0, [R0]; EmuShader::ShaderCloset ...
1C177A:  STR             R0, [SP,#0x58+var_4C]
1C177C:  LDR.W           R0, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C1784)
1C1780:  ADD             R0, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C1782:  LDR             R0, [R0]; EmuShader::ShaderCloset ...
1C1784:  STR             R0, [SP,#0x58+var_54]
1C1786:  LDR.W           R0, =(renderQueue_ptr - 0x1C178E)
1C178A:  ADD             R0, PC; renderQueue_ptr
1C178C:  LDR.W           R11, [R0]; renderQueue
1C1790:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1C1798)
1C1794:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C1796:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C1798:  STR             R0, [SP,#0x58+var_28]
1C179A:  LDR.W           R0, =(renderQueue_ptr - 0x1C17A2)
1C179E:  ADD             R0, PC; renderQueue_ptr
1C17A0:  LDR             R0, [R0]; renderQueue
1C17A2:  STR             R0, [SP,#0x58+var_38]
1C17A4:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1C17AC)
1C17A8:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C17AA:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C17AC:  STR             R0, [SP,#0x58+var_3C]
1C17AE:  LDR.W           R0, =(renderQueue_ptr - 0x1C17B6)
1C17B2:  ADD             R0, PC; renderQueue_ptr
1C17B4:  LDR.W           R10, [R0]; renderQueue
1C17B8:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1C17C0)
1C17BC:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C17BE:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C17C0:  STR             R0, [SP,#0x58+var_2C]
1C17C2:  LDR.W           R0, =(renderQueue_ptr - 0x1C17CA)
1C17C6:  ADD             R0, PC; renderQueue_ptr
1C17C8:  LDR             R0, [R0]; renderQueue
1C17CA:  STR             R0, [SP,#0x58+var_30]
1C17CC:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1C17D4)
1C17D0:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C17D2:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C17D4:  STR             R0, [SP,#0x58+var_34]
1C17D6:  LDR             R0, [SP,#0x58+var_48]
1C17D8:  STR             R1, [SP,#0x58+var_40]
1C17DA:  LDR.W           R5, [R0,R1,LSL#2]
1C17DE:  LDR             R0, [SP,#0x58+var_4C]
1C17E0:  UXTB            R2, R5
1C17E2:  LDR.W           R0, [R0,R2,LSL#2]
1C17E6:  CBNZ            R0, loc_1C17EE
1C17E8:  B               loc_1C17F6
1C17EA:  LDR             R0, [R0,#0x14]
1C17EC:  CBZ             R0, loc_1C17F6
1C17EE:  LDR             R1, [R0,#8]
1C17F0:  CMP             R1, R5
1C17F2:  BNE             loc_1C17EA
1C17F4:  B               loc_1C1B3A
1C17F6:  MOVS            R0, #0x18; unsigned int
1C17F8:  STR             R2, [SP,#0x58+var_44]
1C17FA:  BLX             _Znwj; operator new(uint)
1C17FE:  ADD             R1, SP, #0x58+var_20; unsigned int
1C1800:  ADD             R2, SP, #0x58+var_24; char **
1C1802:  MOV             R4, R0
1C1804:  MOV             R0, R5; this
1C1806:  MOV.W           R9, #0
1C180A:  STR             R5, [R4,#8]
1C180C:  STR.W           R9, [R4,#0x14]
1C1810:  BLX             j__ZN8RQShader11BuildSourceEjPPKcS2_; RQShader::BuildSource(uint,char const**,char const**)
1C1814:  LDR             R0, [SP,#0x58+var_20]; char *
1C1816:  BLX             j__Z10HashStringPKc; HashString(char const*)
1C181A:  STR             R0, [R4,#0xC]
1C181C:  LDR             R0, [SP,#0x58+var_24]; char *
1C181E:  BLX             j__Z10HashStringPKc; HashString(char const*)
1C1822:  STR             R0, [R4,#0x10]
1C1824:  LDR             R0, [SP,#0x58+var_20]; char *
1C1826:  BLX             j_strdup
1C182A:  MOV             R8, R0
1C182C:  LDR             R0, [SP,#0x58+var_24]; char *
1C182E:  BLX             j_strdup
1C1832:  MOV             R1, R0; char *
1C1834:  MOV             R0, R8; char *
1C1836:  MOV             R2, R5; unsigned int
1C1838:  MOV.W           R8, #0
1C183C:  BLX             j__Z14RQCreateShaderPKcS0_j; RQCreateShader(char const*,char const*,uint)
1C1840:  STR             R0, [R4]
1C1842:  MOVS            R0, #1
1C1844:  STRB            R0, [R4,#4]
1C1846:  MOV             R0, R5; unsigned int
1C1848:  BLX             j__Z14RegisterShaderj; RegisterShader(uint)
1C184C:  LDR             R1, [SP,#0x58+var_54]
1C184E:  LDR             R2, [SP,#0x58+var_44]
1C1850:  LDR.W           R0, [R1,R2,LSL#2]
1C1854:  STR             R0, [R4,#0x14]
1C1856:  STR.W           R4, [R1,R2,LSL#2]
1C185A:  MOV             R0, R4; this
1C185C:  MOVS            R1, #1; bool
1C185E:  LDR             R4, [SP,#0x58+var_50]
1C1860:  BLX             j__ZN9EmuShader6SelectEb; EmuShader::Select(bool)
1C1864:  CMP.W           R9, #2
1C1868:  BEQ             loc_1C1920
1C186A:  CMP.W           R9, #1
1C186E:  BEQ.W           loc_1C1996
1C1872:  CMP.W           R9, #0
1C1876:  BNE.W           loc_1C1AE6
1C187A:  LDR             R0, [SP,#0x58+var_2C]
1C187C:  LDRB            R0, [R0]
1C187E:  CMP             R0, #0
1C1880:  BEQ.W           loc_1C1AE6
1C1884:  LDR             R3, [SP,#0x58+var_30]
1C1886:  MOVS            R2, #0x22 ; '"'
1C1888:  LDR             R0, [R3]
1C188A:  LDR.W           R1, [R0,#0x274]
1C188E:  STR.W           R2, [R0,#0x278]
1C1892:  STR             R2, [R1]
1C1894:  LDR.W           R1, [R0,#0x274]
1C1898:  ADDS            R1, #4
1C189A:  STR.W           R1, [R0,#0x274]
1C189E:  LDR             R0, [R3]
1C18A0:  LDR.W           R1, [R0,#0x274]
1C18A4:  STR.W           R8, [R1]
1C18A8:  LDR.W           R1, [R0,#0x274]
1C18AC:  ADDS            R1, #4
1C18AE:  STR.W           R1, [R0,#0x274]
1C18B2:  LDR             R5, [R3]
1C18B4:  LDRB.W          R0, [R5,#0x259]
1C18B8:  CMP             R0, #0
1C18BA:  ITT NE
1C18BC:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C18C0:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C18C4:  LDRD.W          R1, R2, [R5,#0x270]
1C18C8:  ADD.W           R0, R5, #0x270
1C18CC:  DMB.W           ISH
1C18D0:  SUBS            R1, R2, R1
1C18D2:  LDREX.W         R2, [R0]
1C18D6:  ADD             R2, R1
1C18D8:  STREX.W         R3, R2, [R0]
1C18DC:  CMP             R3, #0
1C18DE:  BNE             loc_1C18D2
1C18E0:  DMB.W           ISH
1C18E4:  LDRB.W          R0, [R5,#0x259]
1C18E8:  CMP             R0, #0
1C18EA:  ITT NE
1C18EC:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C18F0:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C18F4:  LDRB.W          R0, [R5,#0x258]
1C18F8:  CMP             R0, #0
1C18FA:  ITT EQ
1C18FC:  MOVEQ           R0, R5; this
1C18FE:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1902:  LDR.W           R1, [R5,#0x270]
1C1906:  LDR.W           R0, [R5,#0x264]
1C190A:  ADD.W           R1, R1, #0x400
1C190E:  CMP             R1, R0
1C1910:  ITT HI
1C1912:  MOVHI           R0, R5; this
1C1914:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1918:  LDR             R0, [SP,#0x58+var_34]
1C191A:  STRB.W          R8, [R0]
1C191E:  B               loc_1C1AE6
1C1920:  LDR.W           R0, [R11]
1C1924:  MOVS            R2, #0x23 ; '#'
1C1926:  LDR.W           R1, [R0,#0x274]
1C192A:  STR.W           R2, [R0,#0x278]
1C192E:  STR             R2, [R1]
1C1930:  MOVS            R2, #1
1C1932:  LDR.W           R1, [R0,#0x274]
1C1936:  ADDS            R1, #4
1C1938:  STR.W           R1, [R0,#0x274]
1C193C:  LDR.W           R0, [R11]
1C1940:  LDR.W           R1, [R0,#0x274]
1C1944:  STR             R2, [R1]
1C1946:  LDR.W           R1, [R0,#0x274]
1C194A:  ADDS            R1, #4
1C194C:  STR.W           R1, [R0,#0x274]
1C1950:  LDR.W           R0, [R11]
1C1954:  LDR.W           R1, [R0,#0x274]
1C1958:  STR             R2, [R1]
1C195A:  LDR.W           R1, [R0,#0x274]
1C195E:  ADDS            R1, #4
1C1960:  STR.W           R1, [R0,#0x274]
1C1964:  LDR.W           R5, [R11]
1C1968:  LDRB.W          R0, [R5,#0x259]
1C196C:  CMP             R0, #0
1C196E:  ITT NE
1C1970:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C1974:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C1978:  LDRD.W          R1, R2, [R5,#0x270]
1C197C:  ADD.W           R0, R5, #0x270
1C1980:  DMB.W           ISH
1C1984:  SUBS            R1, R2, R1
1C1986:  LDREX.W         R2, [R0]
1C198A:  ADD             R2, R1
1C198C:  STREX.W         R3, R2, [R0]
1C1990:  CMP             R3, #0
1C1992:  BNE             loc_1C1986
1C1994:  B               loc_1C1AAE
1C1996:  LDR             R0, [SP,#0x58+var_28]
1C1998:  LDRB            R0, [R0]
1C199A:  CMP             R0, #0
1C199C:  BNE             loc_1C1A38
1C199E:  LDR             R3, [SP,#0x58+var_38]
1C19A0:  MOVS            R2, #0x22 ; '"'
1C19A2:  LDR             R0, [R3]
1C19A4:  LDR.W           R1, [R0,#0x274]
1C19A8:  STR.W           R2, [R0,#0x278]
1C19AC:  STR             R2, [R1]
1C19AE:  MOVS            R2, #1
1C19B0:  LDR.W           R1, [R0,#0x274]
1C19B4:  ADDS            R1, #4
1C19B6:  STR.W           R1, [R0,#0x274]
1C19BA:  LDR             R0, [R3]
1C19BC:  LDR.W           R1, [R0,#0x274]
1C19C0:  STR             R2, [R1]
1C19C2:  LDR.W           R1, [R0,#0x274]
1C19C6:  ADDS            R1, #4
1C19C8:  STR.W           R1, [R0,#0x274]
1C19CC:  LDR             R5, [R3]
1C19CE:  LDRB.W          R0, [R5,#0x259]
1C19D2:  CMP             R0, #0
1C19D4:  ITT NE
1C19D6:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C19DA:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C19DE:  LDRD.W          R1, R2, [R5,#0x270]
1C19E2:  ADD.W           R0, R5, #0x270
1C19E6:  DMB.W           ISH
1C19EA:  SUBS            R1, R2, R1
1C19EC:  LDREX.W         R2, [R0]
1C19F0:  ADD             R2, R1
1C19F2:  STREX.W         R3, R2, [R0]
1C19F6:  CMP             R3, #0
1C19F8:  BNE             loc_1C19EC
1C19FA:  DMB.W           ISH
1C19FE:  LDRB.W          R0, [R5,#0x259]
1C1A02:  CMP             R0, #0
1C1A04:  ITT NE
1C1A06:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C1A0A:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C1A0E:  LDRB.W          R0, [R5,#0x258]
1C1A12:  CMP             R0, #0
1C1A14:  ITT EQ
1C1A16:  MOVEQ           R0, R5; this
1C1A18:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1A1C:  LDR.W           R1, [R5,#0x270]
1C1A20:  LDR.W           R0, [R5,#0x264]
1C1A24:  ADD.W           R1, R1, #0x400
1C1A28:  CMP             R1, R0
1C1A2A:  ITT HI
1C1A2C:  MOVHI           R0, R5; this
1C1A2E:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1A32:  LDR             R1, [SP,#0x58+var_3C]
1C1A34:  MOVS            R0, #1
1C1A36:  STRB            R0, [R1]
1C1A38:  LDR.W           R0, [R10]
1C1A3C:  MOVS            R2, #0x23 ; '#'
1C1A3E:  LDR.W           R1, [R0,#0x274]
1C1A42:  STR.W           R2, [R0,#0x278]
1C1A46:  STR             R2, [R1]
1C1A48:  MOVS            R2, #4
1C1A4A:  LDR.W           R1, [R0,#0x274]
1C1A4E:  ADDS            R1, #4
1C1A50:  STR.W           R1, [R0,#0x274]
1C1A54:  LDR.W           R0, [R10]
1C1A58:  LDR.W           R1, [R0,#0x274]
1C1A5C:  STR             R2, [R1]
1C1A5E:  MOVS            R2, #5
1C1A60:  LDR.W           R1, [R0,#0x274]
1C1A64:  ADDS            R1, #4
1C1A66:  STR.W           R1, [R0,#0x274]
1C1A6A:  LDR.W           R0, [R10]
1C1A6E:  LDR.W           R1, [R0,#0x274]
1C1A72:  STR             R2, [R1]
1C1A74:  LDR.W           R1, [R0,#0x274]
1C1A78:  ADDS            R1, #4
1C1A7A:  STR.W           R1, [R0,#0x274]
1C1A7E:  LDR.W           R5, [R10]
1C1A82:  LDRB.W          R0, [R5,#0x259]
1C1A86:  CMP             R0, #0
1C1A88:  ITT NE
1C1A8A:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C1A8E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C1A92:  LDRD.W          R1, R2, [R5,#0x270]
1C1A96:  ADD.W           R0, R5, #0x270
1C1A9A:  DMB.W           ISH
1C1A9E:  SUBS            R1, R2, R1
1C1AA0:  LDREX.W         R2, [R0]
1C1AA4:  ADD             R2, R1
1C1AA6:  STREX.W         R3, R2, [R0]
1C1AAA:  CMP             R3, #0
1C1AAC:  BNE             loc_1C1AA0
1C1AAE:  DMB.W           ISH
1C1AB2:  LDRB.W          R0, [R5,#0x259]
1C1AB6:  CMP             R0, #0
1C1AB8:  ITT NE
1C1ABA:  LDRNE.W         R0, [R5,#0x25C]; mutex
1C1ABE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C1AC2:  LDRB.W          R0, [R5,#0x258]
1C1AC6:  CMP             R0, #0
1C1AC8:  ITT EQ
1C1ACA:  MOVEQ           R0, R5; this
1C1ACC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1AD0:  LDR.W           R1, [R5,#0x270]
1C1AD4:  LDR.W           R0, [R5,#0x264]
1C1AD8:  ADD.W           R1, R1, #0x400
1C1ADC:  CMP             R1, R0
1C1ADE:  ITT HI
1C1AE0:  MOVHI           R0, R5; this
1C1AE2:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1AE6:  MOVS            R0, #5; unsigned int
1C1AE8:  BLX             j__Z11emu_glBeginj; emu_glBegin(uint)
1C1AEC:  MOV             R0, R6; float
1C1AEE:  MOVS            R1, #0; float
1C1AF0:  MOVS            R2, #0; float
1C1AF2:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1C1AF6:  MOVS            R0, #0; float
1C1AF8:  MOV.W           R1, #0x3F800000; float
1C1AFC:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1C1B00:  MOV.W           R0, #0x3F800000; float
1C1B04:  MOVS            R1, #0; float
1C1B06:  MOVS            R2, #0; float
1C1B08:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1C1B0C:  MOV.W           R0, #0x3F800000; float
1C1B10:  MOV.W           R1, #0x3F800000; float
1C1B14:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1C1B18:  MOV             R0, R6; float
1C1B1A:  MOVS            R1, #0; float
1C1B1C:  MOVS            R2, #0; float
1C1B1E:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1C1B22:  MOVS            R0, #0; float
1C1B24:  MOVS            R1, #0; float
1C1B26:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1C1B2A:  BLX             j__Z17emu_glEndInternalv; emu_glEndInternal(void)
1C1B2E:  ADD.W           R9, R9, #1
1C1B32:  CMP.W           R9, #3
1C1B36:  BNE.W           loc_1C1864
1C1B3A:  LDR             R1, [SP,#0x58+var_40]
1C1B3C:  ADDS            R1, #1
1C1B3E:  CMP             R1, R4
1C1B40:  BNE.W           loc_1C17D6
1C1B44:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1C1B4C)
1C1B46:  LDR             R1, [SP,#0x58+var_58]
1C1B48:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C1B4A:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C1B4C:  LDRB            R0, [R0]
1C1B4E:  CMP             R1, #0
1C1B50:  BEQ.W           loc_1C1CB0
1C1B54:  CMP             R0, #0
1C1B56:  BNE             loc_1C1BFA
1C1B58:  LDR             R0, =(renderQueue_ptr - 0x1C1B60)
1C1B5A:  MOVS            R3, #0x22 ; '"'
1C1B5C:  ADD             R0, PC; renderQueue_ptr
1C1B5E:  LDR             R0, [R0]; renderQueue
1C1B60:  LDR             R1, [R0]
1C1B62:  LDR.W           R2, [R1,#0x274]
1C1B66:  STR.W           R3, [R1,#0x278]
1C1B6A:  STR             R3, [R2]
1C1B6C:  MOVS            R3, #1
1C1B6E:  LDR.W           R2, [R1,#0x274]
1C1B72:  ADDS            R2, #4
1C1B74:  STR.W           R2, [R1,#0x274]
1C1B78:  LDR             R1, [R0]
1C1B7A:  LDR.W           R2, [R1,#0x274]
1C1B7E:  STR             R3, [R2]
1C1B80:  LDR.W           R2, [R1,#0x274]
1C1B84:  ADDS            R2, #4
1C1B86:  STR.W           R2, [R1,#0x274]
1C1B8A:  LDR             R4, [R0]
1C1B8C:  LDRB.W          R0, [R4,#0x259]
1C1B90:  CMP             R0, #0
1C1B92:  ITT NE
1C1B94:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1B98:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C1B9C:  LDRD.W          R1, R2, [R4,#0x270]
1C1BA0:  ADD.W           R0, R4, #0x270
1C1BA4:  DMB.W           ISH
1C1BA8:  SUBS            R1, R2, R1
1C1BAA:  LDREX.W         R2, [R0]
1C1BAE:  ADD             R2, R1
1C1BB0:  STREX.W         R3, R2, [R0]
1C1BB4:  CMP             R3, #0
1C1BB6:  BNE             loc_1C1BAA
1C1BB8:  DMB.W           ISH
1C1BBC:  LDRB.W          R0, [R4,#0x259]
1C1BC0:  CMP             R0, #0
1C1BC2:  ITT NE
1C1BC4:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1BC8:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C1BCC:  LDRB.W          R0, [R4,#0x258]
1C1BD0:  CMP             R0, #0
1C1BD2:  ITT EQ
1C1BD4:  MOVEQ           R0, R4; this
1C1BD6:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1BDA:  LDR.W           R1, [R4,#0x270]
1C1BDE:  LDR.W           R0, [R4,#0x264]
1C1BE2:  ADD.W           R1, R1, #0x400
1C1BE6:  CMP             R1, R0
1C1BE8:  ITT HI
1C1BEA:  MOVHI           R0, R4; this
1C1BEC:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1BF0:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1C1BF8)
1C1BF2:  MOVS            R1, #1
1C1BF4:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C1BF6:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C1BF8:  STRB            R1, [R0]
1C1BFA:  LDR             R0, =(renderQueue_ptr - 0x1C1C02)
1C1BFC:  MOVS            R3, #0x23 ; '#'
1C1BFE:  ADD             R0, PC; renderQueue_ptr
1C1C00:  LDR             R0, [R0]; renderQueue
1C1C02:  LDR             R1, [R0]
1C1C04:  LDR.W           R2, [R1,#0x274]
1C1C08:  STR.W           R3, [R1,#0x278]
1C1C0C:  STR             R3, [R2]
1C1C0E:  MOVS            R3, #4
1C1C10:  LDR.W           R2, [R1,#0x274]
1C1C14:  ADDS            R2, #4
1C1C16:  STR.W           R2, [R1,#0x274]
1C1C1A:  LDR             R1, [R0]
1C1C1C:  LDR.W           R2, [R1,#0x274]
1C1C20:  STR             R3, [R2]
1C1C22:  MOVS            R3, #5
1C1C24:  LDR.W           R2, [R1,#0x274]
1C1C28:  ADDS            R2, #4
1C1C2A:  STR.W           R2, [R1,#0x274]
1C1C2E:  LDR             R1, [R0]
1C1C30:  LDR.W           R2, [R1,#0x274]
1C1C34:  STR             R3, [R2]
1C1C36:  LDR.W           R2, [R1,#0x274]
1C1C3A:  ADDS            R2, #4
1C1C3C:  STR.W           R2, [R1,#0x274]
1C1C40:  LDR             R4, [R0]
1C1C42:  LDRB.W          R0, [R4,#0x259]
1C1C46:  CMP             R0, #0
1C1C48:  ITT NE
1C1C4A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1C4E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C1C52:  LDRD.W          R1, R2, [R4,#0x270]
1C1C56:  ADD.W           R0, R4, #0x270
1C1C5A:  DMB.W           ISH
1C1C5E:  SUBS            R1, R2, R1
1C1C60:  LDREX.W         R2, [R0]
1C1C64:  ADD             R2, R1
1C1C66:  STREX.W         R3, R2, [R0]
1C1C6A:  CMP             R3, #0
1C1C6C:  BNE             loc_1C1C60
1C1C6E:  DMB.W           ISH
1C1C72:  LDRB.W          R0, [R4,#0x259]
1C1C76:  CMP             R0, #0
1C1C78:  ITT NE
1C1C7A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1C7E:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C1C82:  LDRB.W          R0, [R4,#0x258]
1C1C86:  CMP             R0, #0
1C1C88:  ITT EQ
1C1C8A:  MOVEQ           R0, R4; this
1C1C8C:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1C90:  LDR.W           R1, [R4,#0x270]
1C1C94:  LDR.W           R0, [R4,#0x264]
1C1C98:  ADD.W           R1, R1, #0x400
1C1C9C:  CMP             R1, R0
1C1C9E:  BLS             loc_1C1D56
1C1CA0:  MOV             R0, R4; this
1C1CA2:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1CA6:  B               loc_1C1D56
1C1CA8:  MOV             R0, R1
1C1CAA:  CMP             R1, #0
1C1CAC:  BNE.W           loc_1C1B54
1C1CB0:  CMP             R0, #0
1C1CB2:  BEQ             loc_1C1D56
1C1CB4:  LDR             R0, =(renderQueue_ptr - 0x1C1CBC)
1C1CB6:  MOVS            R3, #0x22 ; '"'
1C1CB8:  ADD             R0, PC; renderQueue_ptr
1C1CBA:  LDR             R0, [R0]; renderQueue
1C1CBC:  LDR             R1, [R0]
1C1CBE:  LDR.W           R2, [R1,#0x274]
1C1CC2:  STR.W           R3, [R1,#0x278]
1C1CC6:  STR             R3, [R2]
1C1CC8:  MOVS            R3, #0
1C1CCA:  LDR.W           R2, [R1,#0x274]
1C1CCE:  ADDS            R2, #4
1C1CD0:  STR.W           R2, [R1,#0x274]
1C1CD4:  LDR             R1, [R0]
1C1CD6:  LDR.W           R2, [R1,#0x274]
1C1CDA:  STR             R3, [R2]
1C1CDC:  LDR.W           R2, [R1,#0x274]
1C1CE0:  ADDS            R2, #4
1C1CE2:  STR.W           R2, [R1,#0x274]
1C1CE6:  LDR             R4, [R0]
1C1CE8:  LDRB.W          R0, [R4,#0x259]
1C1CEC:  CMP             R0, #0
1C1CEE:  ITT NE
1C1CF0:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1CF4:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1C1CF8:  LDRD.W          R1, R2, [R4,#0x270]
1C1CFC:  ADD.W           R0, R4, #0x270
1C1D00:  DMB.W           ISH
1C1D04:  SUBS            R1, R2, R1
1C1D06:  LDREX.W         R2, [R0]
1C1D0A:  ADD             R2, R1
1C1D0C:  STREX.W         R3, R2, [R0]
1C1D10:  CMP             R3, #0
1C1D12:  BNE             loc_1C1D06
1C1D14:  DMB.W           ISH
1C1D18:  LDRB.W          R0, [R4,#0x259]
1C1D1C:  CMP             R0, #0
1C1D1E:  ITT NE
1C1D20:  LDRNE.W         R0, [R4,#0x25C]; mutex
1C1D24:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1C1D28:  LDRB.W          R0, [R4,#0x258]
1C1D2C:  CMP             R0, #0
1C1D2E:  ITT EQ
1C1D30:  MOVEQ           R0, R4; this
1C1D32:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1C1D36:  LDR.W           R1, [R4,#0x270]
1C1D3A:  LDR.W           R0, [R4,#0x264]
1C1D3E:  ADD.W           R1, R1, #0x400
1C1D42:  CMP             R1, R0
1C1D44:  ITT HI
1C1D46:  MOVHI           R0, R4; this
1C1D48:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1C1D4C:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1C1D54)
1C1D4E:  MOVS            R1, #0
1C1D50:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1C1D52:  LDR             R0, [R0]; emu_InternalBlendEnabled
1C1D54:  STRB            R1, [R0]
1C1D56:  ADD             SP, SP, #0x3C ; '<'
1C1D58:  POP.W           {R8-R11}
1C1D5C:  POP             {R4-R7,PC}
