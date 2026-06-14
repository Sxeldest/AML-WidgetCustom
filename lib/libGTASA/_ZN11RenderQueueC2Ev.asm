; =========================================================
; Game Engine Function: _ZN11RenderQueueC2Ev
; Address            : 0x1D1730 - 0x1D1D02
; =========================================================

1D1730:  PUSH            {R4-R7,LR}
1D1732:  ADD             R7, SP, #0xC
1D1734:  PUSH.W          {R8-R11}
1D1738:  SUB             SP, SP, #4
1D173A:  VPUSH           {D8-D15}
1D173E:  SUB             SP, SP, #0x88
1D1740:  MOV             R4, SP
1D1742:  BFC.W           R4, #0, #4
1D1746:  MOV             SP, R4
1D1748:  MOV             R4, R0
1D174A:  MOVW            R0, #0x101
1D174E:  STRH.W          R0, [R4,#0x258]
1D1752:  ADR.W           R0, aRendercommand; "RenderCommand"
1D1756:  BLX             j__Z14OS_MutexCreatePKc; OS_MutexCreate(char const*)
1D175A:  STR.W           R0, [R4,#0x25C]
1D175E:  BLX             j__Z15IsLowSpecDevicev; IsLowSpecDevice(void)
1D1762:  CMP             R0, #0
1D1764:  MOV.W           R0, #0x1000000
1D1768:  IT NE
1D176A:  MOVNE.W         R0, #0x80000; byte_count
1D176E:  MOV.W           R6, #0x1000000
1D1772:  BLX             malloc
1D1776:  MOV             R11, R0
1D1778:  LDR.W           R0, =(_Z31RQ_Command_rqVertexBufferDeleteRPc_ptr - 0x1D1788)
1D177C:  LDR.W           R1, =(_Z31RQ_Command_rqVertexBufferUpdateRPc_ptr - 0x1D178E)
1D1780:  ADD.W           LR, SP, #0xE8+var_D8
1D1784:  ADD             R0, PC; _Z31RQ_Command_rqVertexBufferDeleteRPc_ptr
1D1786:  ADR.W           R2, dword_1D1D30
1D178A:  ADD             R1, PC; _Z31RQ_Command_rqVertexBufferUpdateRPc_ptr
1D178C:  LDR.W           R8, =(_Z17RQ_Command_rqFreeRPc_ptr - 0x1D179C)
1D1790:  VLD1.32         {D11[0]}, [R0@32]
1D1794:  LDR.W           R0, =(_Z30RQ_Command_rqIndexBufferSelectRPc_ptr - 0x1D17A2)
1D1798:  ADD             R8, PC; _Z17RQ_Command_rqFreeRPc_ptr
1D179A:  ADD.W           R5, R4, #0xD0
1D179E:  ADD             R0, PC; _Z30RQ_Command_rqIndexBufferSelectRPc_ptr
1D17A0:  VLD1.32         {D10[0]}, [R1@32]
1D17A4:  ADR.W           R1, dword_1D1D10
1D17A8:  VLD1.64         {D16-D17}, [R1@128]
1D17AC:  VLD1.32         {D11[1]}, [R0@32]
1D17B0:  LDR.W           R1, =(_Z28RQ_Command_rqVertexBufferCPURPc_ptr - 0x1D17BC)
1D17B4:  LDR.W           R0, =(_Z25RQ_Command_rqTargetCreateRPc_ptr - 0x1D17C2)
1D17B8:  ADD             R1, PC; _Z28RQ_Command_rqVertexBufferCPURPc_ptr
1D17BA:  VST1.64         {D16-D17}, [LR@128]
1D17BE:  ADD             R0, PC; _Z25RQ_Command_rqTargetCreateRPc_ptr
1D17C0:  ADD.W           LR, SP, #0xE8+var_C8
1D17C4:  VLD1.32         {D10[1]}, [R1@32]
1D17C8:  LDR.W           R1, =(_Z26RQ_Command_rqSelectTextureRPc_ptr - 0x1D17D0)
1D17CC:  ADD             R1, PC; _Z26RQ_Command_rqSelectTextureRPc_ptr
1D17CE:  VLD1.32         {D15[0]}, [R0@32]
1D17D2:  LDR.W           R0, =(_Z27RQ_Command_rqTextureMipModeRPc_ptr - 0x1D17DE)
1D17D6:  VLD1.32         {D14[0]}, [R1@32]
1D17DA:  ADD             R0, PC; _Z27RQ_Command_rqTextureMipModeRPc_ptr
1D17DC:  LDR.W           R1, =(_Z25RQ_Command_rqDeleteShaderRPc_ptr - 0x1D17E8)
1D17E0:  VLD1.32         {D17[0]}, [R0@32]
1D17E4:  ADD             R1, PC; _Z25RQ_Command_rqDeleteShaderRPc_ptr
1D17E6:  LDR.W           R0, =(_Z27RQ_Command_rqDrawNonIndexedRPc_ptr - 0x1D17F2)
1D17EA:  VLD1.32         {D16[0]}, [R1@32]
1D17EE:  ADD             R0, PC; _Z27RQ_Command_rqDrawNonIndexedRPc_ptr
1D17F0:  VST1.64         {D16-D17}, [LR@128]
1D17F4:  ADD.W           LR, SP, #0xE8+var_B8
1D17F8:  VLD1.32         {D17[0]}, [R0@32]
1D17FC:  LDR.W           R1, =(_Z33RQ_Command_rqSetVertexDescriptionRPc_ptr - 0x1D1808)
1D1800:  LDR.W           R0, =(_Z30RQ_Command_rqVertexStateCreateRPc_ptr - 0x1D180E)
1D1804:  ADD             R1, PC; _Z33RQ_Command_rqSetVertexDescriptionRPc_ptr
1D1806:  LDR.W           R9, =(_Z23RQ_Command_rqReadPixelsRPc_ptr - 0x1D181C)
1D180A:  ADD             R0, PC; _Z30RQ_Command_rqVertexStateCreateRPc_ptr
1D180C:  LDR.W           R10, =(_Z21RQ_Command_rqSetZBiasRPc_ptr - 0x1D181E)
1D1810:  VLD1.32         {D16[0]}, [R1@32]
1D1814:  LDR.W           R1, =(_Z27RQ_Command_rqIndexBufferCPURPc_ptr - 0x1D1820)
1D1818:  ADD             R9, PC; _Z23RQ_Command_rqReadPixelsRPc_ptr
1D181A:  ADD             R10, PC; _Z21RQ_Command_rqSetZBiasRPc_ptr
1D181C:  ADD             R1, PC; _Z27RQ_Command_rqIndexBufferCPURPc_ptr
1D181E:  VST1.64         {D16-D17}, [LR@128]
1D1822:  ADD.W           LR, SP, #0xE8+var_A8
1D1826:  VLD1.32         {D17[0]}, [R0@32]
1D182A:  LDR.W           R0, =(aRqvertexbuffer - 0x1D183A); "rqVertexBufferDelete"
1D182E:  VLD1.32         {D16[0]}, [R1@32]
1D1832:  ADR.W           R1, dword_1D1D20
1D1836:  ADD             R0, PC; "rqVertexBufferDelete"
1D1838:  VMOV.32         D13[0], R0
1D183C:  LDR.W           R0, =(aRqindexbuffers - 0x1D1848); "rqIndexBufferSelect"
1D1840:  VST1.64         {D16-D17}, [LR@128]
1D1844:  ADD             R0, PC; "rqIndexBufferSelect"
1D1846:  ADD.W           LR, SP, #0xE8+var_98
1D184A:  VLD1.64         {D16-D17}, [R1@128]
1D184E:  LDR.W           R1, =(_Z24RQ_Command_rqDebugMarkerRPc_ptr - 0x1D185E)
1D1852:  VMOV.32         D13[1], R0
1D1856:  LDR.W           R0, =(aRqvertexbuffer_0 - 0x1D1868); "rqVertexBufferUpdate"
1D185A:  ADD             R1, PC; _Z24RQ_Command_rqDebugMarkerRPc_ptr
1D185C:  VST1.64         {D16-D17}, [LR@128]
1D1860:  ADD.W           LR, SP, #0xE8+var_88
1D1864:  ADD             R0, PC; "rqVertexBufferUpdate"
1D1866:  VLD1.64         {D16-D17}, [R2@128]
1D186A:  ADR.W           R2, dword_1D1D40
1D186E:  VLD1.32         {D9[0]}, [R1@32]
1D1872:  VST1.64         {D16-D17}, [LR@128]
1D1876:  ADD.W           LR, SP, #0xE8+var_78
1D187A:  VLD1.64         {D16-D17}, [R2@128]
1D187E:  VST1.64         {D16-D17}, [LR@128]
1D1882:  VMOV.32         D12[0], R0
1D1886:  STR.W           R11, [R4,#0x260]
1D188A:  BLX             j__Z15IsLowSpecDevicev; IsLowSpecDevice(void)
1D188E:  ADD.W           LR, SP, #0xE8+var_D8
1D1892:  ADD.W           R3, R4, #8
1D1896:  VLD1.64         {D16-D17}, [LR@128]
1D189A:  ADD.W           LR, SP, #0xE8+var_C8
1D189E:  CMP             R0, #0
1D18A0:  VLD1.32         {D8[0]}, [R9@32]
1D18A4:  ADD.W           R9, SP, #0xE8+var_98
1D18A8:  LDR.W           R1, =(aRqvertexbuffer_1 - 0x1D18B4); "rqVertexBufferCPU"
1D18AC:  VST1.32         {D16-D17}, [R5]
1D18B0:  ADD             R1, PC; "rqVertexBufferCPU"
1D18B2:  VLD1.32         {D17[0]}, [R8@32]
1D18B6:  LDR.W           R2, =(aRqindexbufferu - 0x1D18CA); "rqIndexBufferUpdate"
1D18BA:  VMOV.32         D12[1], R1
1D18BE:  LDR.W           R5, =(_Z31RQ_Command_rqVertexBufferSelectRPc_ptr - 0x1D18CC)
1D18C2:  VLD1.32         {D16[0]}, [R10@32]
1D18C6:  ADD             R2, PC; "rqIndexBufferUpdate"
1D18C8:  ADD             R5, PC; _Z31RQ_Command_rqVertexBufferSelectRPc_ptr
1D18CA:  VST1.32         {D10-D11}, [R3]
1D18CE:  LDR.W           R3, =(_Z31RQ_Command_rqVertexBufferCreateRPc_ptr - 0x1D18DE)
1D18D2:  VMOV.32         D22[0], R2
1D18D6:  LDR.W           R1, =(_Z30RQ_Command_rqIndexBufferCreateRPc_ptr - 0x1D18E4)
1D18DA:  ADD             R3, PC; _Z31RQ_Command_rqVertexBufferCreateRPc_ptr
1D18DC:  LDR.W           R8, =(aRqvertexstated - 0x1D18EC); "rqVertexStateDelete"
1D18E0:  ADD             R1, PC; _Z30RQ_Command_rqIndexBufferCreateRPc_ptr
1D18E2:  LDR.W           R12, =(_Z30RQ_Command_rqVertexStateDeleteRPc_ptr - 0x1D18F6)
1D18E6:  LDR             R2, [R3]; RQ_Command_rqVertexBufferCreate(char *&)
1D18E8:  ADD             R8, PC; "rqVertexStateDelete"
1D18EA:  LDR             R3, [R5]; RQ_Command_rqVertexBufferSelect(char *&)
1D18EC:  ADD.W           R5, R4, #0x198
1D18F0:  LDR             R1, [R1]; RQ_Command_rqIndexBufferCreate(char *&)
1D18F2:  ADD             R12, PC; _Z30RQ_Command_rqVertexStateDeleteRPc_ptr
1D18F4:  VST1.32         {D12-D13}, [R5]
1D18F8:  LDR.W           R5, =(aRqindexbufferd - 0x1D1908); "rqIndexBufferDelete"
1D18FC:  VLD1.64         {D18-D19}, [LR@128]
1D1900:  ADD.W           LR, SP, #0xE8+var_B8
1D1904:  ADD             R5, PC; "rqIndexBufferDelete"
1D1906:  LDR.W           R0, [R12]; RQ_Command_rqVertexStateDelete(char *&)
1D190A:  VMOV.32         D23[0], R5
1D190E:  LDR.W           R5, =(_Z25RQ_Command_rqTargetSelectRPc_ptr - 0x1D191A)
1D1912:  LDR.W           R12, =(aRqdeleteshader - 0x1D191C); "rqDeleteShader"
1D1916:  ADD             R5, PC; _Z25RQ_Command_rqTargetSelectRPc_ptr
1D1918:  ADD             R12, PC; "rqDeleteShader"
1D191A:  VLD1.32         {D15[1]}, [R5@32]
1D191E:  LDR.W           R5, =(_Z26RQ_Command_rqDeleteTextureRPc_ptr - 0x1D1926)
1D1922:  ADD             R5, PC; _Z26RQ_Command_rqDeleteTextureRPc_ptr
1D1924:  VLD1.32         {D14[1]}, [R5@32]
1D1928:  LDR.W           R5, =(_Z24RQ_Command_rqTextureWrapRPc_ptr - 0x1D1930)
1D192C:  ADD             R5, PC; _Z24RQ_Command_rqTextureWrapRPc_ptr
1D192E:  VLD1.32         {D19[1]}, [R5@32]
1D1932:  LDR.W           R5, =(_Z24RQ_Command_rqInitTextureRPc_ptr - 0x1D193A)
1D1936:  ADD             R5, PC; _Z24RQ_Command_rqInitTextureRPc_ptr
1D1938:  VLD1.32         {D18[1]}, [R5@32]
1D193C:  LDR.W           R5, =(_Z24RQ_Command_rqBuildShaderRPc_ptr - 0x1D1944)
1D1940:  ADD             R5, PC; _Z24RQ_Command_rqBuildShaderRPc_ptr
1D1942:  VMOV            Q14, Q9
1D1946:  VLD1.64         {D18-D19}, [LR@128]
1D194A:  ADD.W           LR, SP, #0xE8+var_A8
1D194E:  VLD1.32         {D19[1]}, [R5@32]
1D1952:  LDR.W           R5, =(_Z24RQ_Command_rqDrawIndexedRPc_ptr - 0x1D195A)
1D1956:  ADD             R5, PC; _Z24RQ_Command_rqDrawIndexedRPc_ptr
1D1958:  VLD1.32         {D18[1]}, [R5@32]
1D195C:  LDR.W           R5, =(_Z29RQ_Command_rqVertexStateApplyRPc_ptr - 0x1D1964)
1D1960:  ADD             R5, PC; _Z29RQ_Command_rqVertexStateApplyRPc_ptr
1D1962:  VMOV            Q13, Q9
1D1966:  VLD1.64         {D18-D19}, [LR@128]
1D196A:  MOV.W           LR, #0
1D196E:  VLD1.32         {D19[1]}, [R5@32]
1D1972:  LDR.W           R5, =(_Z30RQ_Command_rqIndexBufferDeleteRPc_ptr - 0x1D197A)
1D1976:  ADD             R5, PC; _Z30RQ_Command_rqIndexBufferDeleteRPc_ptr
1D1978:  VLD1.32         {D18[1]}, [R5@32]
1D197C:  LDR.W           R5, =(aRqvertexstatec - 0x1D1984); "rqVertexStateCreate"
1D1980:  ADD             R5, PC; "rqVertexStateCreate"
1D1982:  VMOV.32         D23[1], R5
1D1986:  LDR.W           R5, =(aRqindexbufferc - 0x1D1994); "rqIndexBufferCPU"
1D198A:  STR             R3, [R4]
1D198C:  VMOV            Q12, Q9
1D1990:  ADD             R5, PC; "rqIndexBufferCPU"
1D1992:  LDR.W           R3, =(aRqvertexbuffer_2 - 0x1D19A2); "rqVertexBufferCreate"
1D1996:  VMOV.32         D22[1], R5
1D199A:  LDR.W           R5, =(_Z22RQ_Command_rqDepthFuncRPc_ptr - 0x1D19A4)
1D199E:  ADD             R3, PC; "rqVertexBufferCreate"
1D19A0:  ADD             R5, PC; _Z22RQ_Command_rqDepthFuncRPc_ptr
1D19A2:  VLD1.32         {D19[0]}, [R5@32]
1D19A6:  LDR.W           R5, =(aRqvertexbuffer_3 - 0x1D19AE); "rqVertexBufferSelect"
1D19AA:  ADD             R5, PC; "rqVertexBufferSelect"
1D19AC:  STR.W           R5, [R4,#0x190]
1D19B0:  STR             R2, [R4,#4]
1D19B2:  STR.W           R3, [R4,#0x194]
1D19B6:  STR             R1, [R4,#0x18]
1D19B8:  IT NE
1D19BA:  MOVNE.W         R6, #0x80000
1D19BE:  ADD.W           R1, R11, R6
1D19C2:  LDR.W           R6, [R4,#0x260]
1D19C6:  LDR.W           R5, =(aRqindexbufferc_0 - 0x1D19DC); "rqIndexBufferCreate"
1D19CA:  STRH.W          LR, [R4,#0x26C]
1D19CE:  STRD.W          R1, R6, [R4,#0x264]
1D19D2:  MOVS            R1, #4
1D19D4:  STRD.W          R6, R6, [R4,#0x270]
1D19D8:  ADD             R5, PC; "rqIndexBufferCreate"
1D19DA:  STRD.W          R1, R1, [R4,#0xC8]
1D19DE:  STR.W           R1, [R4,#0xE0]
1D19E2:  STR.W           R5, [R4,#0x1A8]
1D19E6:  ADD.W           R5, R4, #0xE4
1D19EA:  VLD1.64         {D20-D21}, [R9@128]
1D19EE:  LDR.W           R2, =(_Z24RQ_Command_rqEnableBlendRPc_ptr - 0x1D19FA)
1D19F2:  VST1.32         {D20-D21}, [R5]
1D19F6:  ADD             R2, PC; _Z24RQ_Command_rqEnableBlendRPc_ptr
1D19F8:  LDR.W           R5, =(_Z30RQ_Command_rqIndexBufferUpdateRPc_ptr - 0x1D1A08)
1D19FC:  VLD1.32         {D18[0]}, [R2@32]
1D1A00:  LDR.W           R3, =(_Z26RQ_Command_rqTargetScissorRPc_ptr - 0x1D1A0A)
1D1A04:  ADD             R5, PC; _Z30RQ_Command_rqIndexBufferUpdateRPc_ptr
1D1A06:  ADD             R3, PC; _Z26RQ_Command_rqTargetScissorRPc_ptr
1D1A08:  LDR             R2, [R5]; RQ_Command_rqIndexBufferUpdate(char *&)
1D1A0A:  VLD1.32         {D21[0]}, [R3@32]
1D1A0E:  STR             R2, [R4,#0x1C]
1D1A10:  ADD.W           R2, R4, #0x1AC
1D1A14:  LDR.W           R5, =(_Z27RQ_Command_rqTargetViewportRPc_ptr - 0x1D1A20)
1D1A18:  VST1.32         {D22-D23}, [R2]
1D1A1C:  ADD             R5, PC; _Z27RQ_Command_rqTargetViewportRPc_ptr
1D1A1E:  LDR.W           R2, =(aRqdrawindexed - 0x1D1A2E); "rqDrawIndexed"
1D1A22:  LDR.W           R3, =(aRqdrawnonindex - 0x1D1A30); "rqDrawNonIndexed"
1D1A26:  VLD1.32         {D20[0]}, [R5@32]
1D1A2A:  ADD             R2, PC; "rqDrawIndexed"
1D1A2C:  ADD             R3, PC; "rqDrawNonIndexed"
1D1A2E:  VMOV.32         D23[0], R2
1D1A32:  LDR.W           R5, =(aRqsetvertexdes - 0x1D1A46); "rqSetVertexDescription"
1D1A36:  LDR.W           R6, =(aRqvertexstatea - 0x1D1A48); "rqVertexStateApply"
1D1A3A:  ADD.W           R2, R4, #0x20 ; ' '
1D1A3E:  VMOV.32         D22[0], R8
1D1A42:  ADD             R5, PC; "rqSetVertexDescription"
1D1A44:  ADD             R6, PC; "rqVertexStateApply"
1D1A46:  ADD.W           R8, SP, #0xE8+var_88
1D1A4A:  VMOV.32         D23[1], R3
1D1A4E:  LDR.W           R3, =(_Z25RQ_Command_rqSelectShaderRPc_ptr - 0x1D1A5A)
1D1A52:  VMOV.32         D22[1], R5
1D1A56:  ADD             R3, PC; _Z25RQ_Command_rqSelectShaderRPc_ptr
1D1A58:  ADR.W           R5, aRqbuildshader; "rqBuildShader"
1D1A5C:  VST1.32         {D24-D25}, [R2]
1D1A60:  STR.W           R1, [R4,#0xF4]
1D1A64:  STR.W           R6, [R4,#0x1BC]
1D1A68:  STR             R0, [R4,#0x30]
1D1A6A:  ADD.W           R0, R4, #0x1C0
1D1A6E:  STR.W           R1, [R4,#0xF8]
1D1A72:  VST1.32         {D22-D23}, [R0]
1D1A76:  ADR             R0, dword_1D1D50
1D1A78:  VLD1.64         {D22-D23}, [R0@128]
1D1A7C:  ADD.W           R0, R4, #0xFC
1D1A80:  LDR.W           R2, =(aRqtexturemipmo - 0x1D1A8E); "rqTextureMipMode"
1D1A84:  VST1.32         {D22-D23}, [R0]
1D1A88:  ADR             R0, dword_1D1D60
1D1A8A:  ADD             R2, PC; "rqTextureMipMode"
1D1A8C:  VLD1.64         {D24-D25}, [R0@128]
1D1A90:  ADD.W           R0, R4, #0x34 ; '4'
1D1A94:  VST1.32         {D26-D27}, [R0]
1D1A98:  ADR             R0, dword_1D1D70
1D1A9A:  VMOV.32         D27[0], R2
1D1A9E:  LDR.W           R6, =(aRqtexturewrap - 0x1D1AB0); "rqTextureWrap"
1D1AA2:  MOV.W           R2, #0xFFFFFFFF
1D1AA6:  LDR             R3, [R3]; RQ_Command_rqSelectShader(char *&)
1D1AA8:  STR.W           R2, [R4,#0x10C]
1D1AAC:  ADD             R6, PC; "rqTextureWrap"
1D1AAE:  STR             R3, [R4,#0x44]
1D1AB0:  ADR.W           R3, aRqselectshader; "rqSelectShader"
1D1AB4:  VMOV.32         D26[0], R12
1D1AB8:  STRD.W          R5, R3, [R4,#0x1D0]
1D1ABC:  ADD.W           R3, R4, #0x110
1D1AC0:  VLD1.64         {D22-D23}, [R0@128]
1D1AC4:  LDR.W           R0, =(aRqinittexture - 0x1D1AD4); "rqInitTexture"
1D1AC8:  VMOV.32         D27[1], R6
1D1ACC:  LDR.W           R5, =(_Z25RQ_Command_rqTextureAnisoRPc_ptr - 0x1D1ADA)
1D1AD0:  ADD             R0, PC; "rqInitTexture"
1D1AD2:  VST1.32         {D24-D25}, [R3]
1D1AD6:  ADD             R5, PC; _Z25RQ_Command_rqTextureAnisoRPc_ptr
1D1AD8:  LDR.W           R3, =(aRqdeletetextur - 0x1D1AEC); "rqDeleteTexture"
1D1ADC:  VMOV.32         D26[1], R0
1D1AE0:  ADD.W           R0, R4, #0x48 ; 'H'
1D1AE4:  LDR.W           R6, =(_Z23RQ_Command_rqTextureMipRPc_ptr - 0x1D1AF4)
1D1AE8:  ADD             R3, PC; "rqDeleteTexture"
1D1AEA:  VST1.32         {D28-D29}, [R0]
1D1AEE:  ADR             R0, dword_1D1D80
1D1AF0:  ADD             R6, PC; _Z23RQ_Command_rqTextureMipRPc_ptr
1D1AF2:  VLD1.64         {D24-D25}, [R0@128]
1D1AF6:  LDR.W           R0, =(aRqtextureaniso - 0x1D1B08); "rqTextureAniso"
1D1AFA:  VMOV.32         D29[0], R3
1D1AFE:  LDR             R3, [R5]; RQ_Command_rqTextureAniso(char *&)
1D1B00:  ADD.W           R5, R4, #0x1D8
1D1B04:  ADD             R0, PC; "rqTextureAniso"
1D1B06:  LDR             R6, [R6]; RQ_Command_rqTextureMip(char *&)
1D1B08:  VST1.32         {D26-D27}, [R5]
1D1B0C:  LDR             R5, =(aRqtargetcreate - 0x1D1B18); "rqTargetCreate"
1D1B0E:  VMOV.32         D28[0], R0
1D1B12:  LDR             R0, =(aRqselecttextur - 0x1D1B1E); "rqSelectTexture"
1D1B14:  ADD             R5, PC; "rqTargetCreate"
1D1B16:  STR.W           R2, [R4,#0x120]
1D1B1A:  ADD             R0, PC; "rqSelectTexture"
1D1B1C:  LDR             R2, =(aRqtargetdelete - 0x1D1B3A); "rqTargetDelete"
1D1B1E:  VMOV.32         D29[1], R5
1D1B22:  LDR             R5, =(_Z20RQ_Command_rqCleanupRPc_ptr - 0x1D1B32)
1D1B24:  STR             R6, [R4,#0x58]
1D1B26:  ADR             R6, aRqtexturemip; "rqTextureMip"
1D1B28:  VMOV.32         D28[1], R0
1D1B2C:  LDR             R0, =(aRqtargetclear - 0x1D1B38); "rqTargetClear"
1D1B2E:  ADD             R5, PC; _Z20RQ_Command_rqCleanupRPc_ptr
1D1B30:  STR.W           R6, [R4,#0x1E8]
1D1B34:  ADD             R0, PC; "rqTargetClear"
1D1B36:  ADD             R2, PC; "rqTargetDelete"
1D1B38:  LDR.W           R12, [R5]; RQ_Command_rqCleanup(char *&)
1D1B3C:  ADD.W           R6, R4, #0x124
1D1B40:  VMOV.32         D31[0], R0
1D1B44:  LDR             R5, =(aRqtargetscisso - 0x1D1B50); "rqTargetScissor"
1D1B46:  LDR             R0, =(aRqtargetviewpo - 0x1D1B52); "rqTargetViewport"
1D1B48:  VLD1.64         {D26-D27}, [R8@128]
1D1B4C:  ADD             R5, PC; "rqTargetScissor"
1D1B4E:  ADD             R0, PC; "rqTargetViewport"
1D1B50:  VMOV.32         D30[0], R2
1D1B54:  LDR             R2, =(_Z17RQ_Command_rqInitRPc_ptr - 0x1D1B5E)
1D1B56:  VST1.32         {D26-D27}, [R6]
1D1B5A:  ADD             R2, PC; _Z17RQ_Command_rqInitRPc_ptr
1D1B5C:  ADR             R6, dword_1D1D90
1D1B5E:  STR             R3, [R4,#0x5C]
1D1B60:  ADD.W           R3, R4, #0x1EC
1D1B64:  VMOV.32         D31[1], R5
1D1B68:  LDR             R5, =(_Z25RQ_Command_rqTargetDeleteRPc_ptr - 0x1D1B72)
1D1B6A:  VST1.32         {D28-D29}, [R3]
1D1B6E:  ADD             R5, PC; _Z25RQ_Command_rqTargetDeleteRPc_ptr
1D1B70:  LDR             R3, =(aRqenableblend - 0x1D1B7C); "rqEnableBlend"
1D1B72:  VMOV.32         D30[1], R0
1D1B76:  LDR             R0, =(aRqdepthfunc - 0x1D1B82); "rqDepthFunc"
1D1B78:  ADD             R3, PC; "rqEnableBlend"
1D1B7A:  VLD1.64         {D26-D27}, [R6@128]
1D1B7E:  ADD             R0, PC; "rqDepthFunc"
1D1B80:  VMOV.32         D0[0], R3
1D1B84:  LDR             R3, [R2]; RQ_Command_rqInit(char *&)
1D1B86:  LDR             R2, [R5]; RQ_Command_rqTargetDelete(char *&)
1D1B88:  ADD.W           R5, R4, #0x60 ; '`'
1D1B8C:  VMOV.32         D1[0], R0
1D1B90:  LDR             R0, =(aRqsetwindingor - 0x1D1B9A); "rqSetWindingOrder"
1D1B92:  VST1.32         {D14-D15}, [R5]
1D1B96:  ADD             R0, PC; "rqSetWindingOrder"
1D1B98:  LDR             R5, =(aRqsetalphatest - 0x1D1BA2); "rqSetAlphaTest"
1D1B9A:  STR.W           R1, [R4,#0x134]
1D1B9E:  ADD             R5, PC; "rqSetAlphaTest"
1D1BA0:  VMOV.32         D28[0], R5
1D1BA4:  ADR             R5, aRqtargetselect; "rqTargetSelect"
1D1BA6:  STR.W           R5, [R4,#0x1FC]
1D1BAA:  STR.W           R1, [R4,#0x138]
1D1BAE:  VMOV.32         D29[0], R0
1D1BB2:  STR             R2, [R4,#0x70]
1D1BB4:  ADD.W           R2, R4, #0x200
1D1BB8:  LDR             R5, =(aRqinit - 0x1D1BC2); "rqInit"
1D1BBA:  VST1.32         {D30-D31}, [R2]
1D1BBE:  ADD             R5, PC; "rqInit"
1D1BC0:  LDR             R2, =(_Z25RQ_Command_rqSetAlphaTestRPc_ptr - 0x1D1BCC)
1D1BC2:  LDR             R0, =(_Z24RQ_Command_rqDisableCullRPc_ptr - 0x1D1BCE)
1D1BC4:  VMOV.32         D30[0], R5
1D1BC8:  ADD             R2, PC; _Z25RQ_Command_rqSetAlphaTestRPc_ptr
1D1BCA:  ADD             R0, PC; _Z24RQ_Command_rqDisableCullRPc_ptr
1D1BCC:  LDR             R6, [R2]; RQ_Command_rqSetAlphaTest(char *&)
1D1BCE:  ADD             R2, SP, #0xE8+var_78
1D1BD0:  LDR             R5, [R0]; RQ_Command_rqDisableCull(char *&)
1D1BD2:  ADD.W           R0, R4, #0x13C
1D1BD6:  VLD1.64         {D2-D3}, [R2@128]
1D1BDA:  ADR             R2, aRqdisablecull; "rqDisableCull"
1D1BDC:  VST1.32         {D2-D3}, [R0]
1D1BE0:  LDR             R0, =(aRqswapbuffers - 0x1D1BE6); "rqSwapBuffers"
1D1BE2:  ADD             R0, PC; "rqSwapBuffers"
1D1BE4:  VMOV.32         D31[0], R0
1D1BE8:  LDR             R0, =(_Z21RQ_Command_rqShutdownRPc_ptr - 0x1D1BEE)
1D1BEA:  ADD             R0, PC; _Z21RQ_Command_rqShutdownRPc_ptr
1D1BEC:  VLD1.32         {D9[1]}, [R0@32]
1D1BF0:  LDR             R0, =(_Z24RQ_Command_rqSwapBuffersRPc_ptr - 0x1D1BF6)
1D1BF2:  ADD             R0, PC; _Z24RQ_Command_rqSwapBuffersRPc_ptr
1D1BF4:  VLD1.32         {D8[1]}, [R0@32]
1D1BF8:  LDR             R0, =(_Z17RQ_Command_rqCopyRPc_ptr - 0x1D1BFE)
1D1BFA:  ADD             R0, PC; _Z17RQ_Command_rqCopyRPc_ptr
1D1BFC:  VLD1.32         {D17[1]}, [R0@32]
1D1C00:  LDR             R0, =(_Z28RQ_Command_rqSetWindingOrderRPc_ptr - 0x1D1C06)
1D1C02:  ADD             R0, PC; _Z28RQ_Command_rqSetWindingOrderRPc_ptr
1D1C04:  VLD1.32         {D16[1]}, [R0@32]
1D1C08:  LDR             R0, =(_Z20RQ_Command_rqSetCullRPc_ptr - 0x1D1C0E)
1D1C0A:  ADD             R0, PC; _Z20RQ_Command_rqSetCullRPc_ptr
1D1C0C:  VLD1.32         {D19[1]}, [R0@32]
1D1C10:  LDR             R0, =(_Z22RQ_Command_rqBlendFuncRPc_ptr - 0x1D1C16)
1D1C12:  ADD             R0, PC; _Z22RQ_Command_rqBlendFuncRPc_ptr
1D1C14:  VLD1.32         {D18[1]}, [R0@32]
1D1C18:  LDR             R0, =(_Z28RQ_Command_rqEnableDepthReadRPc_ptr - 0x1D1C1E)
1D1C1A:  ADD             R0, PC; _Z28RQ_Command_rqEnableDepthReadRPc_ptr
1D1C1C:  VLD1.32         {D21[1]}, [R0@32]
1D1C20:  LDR             R0, =(_Z24RQ_Command_rqTargetClearRPc_ptr - 0x1D1C26)
1D1C22:  ADD             R0, PC; _Z24RQ_Command_rqTargetClearRPc_ptr
1D1C24:  VLD1.32         {D20[1]}, [R0@32]
1D1C28:  LDR             R0, =(aRqdebugmarker - 0x1D1C2E); "rqDebugMarker"
1D1C2A:  ADD             R0, PC; "rqDebugMarker"
1D1C2C:  VMOV.32         D31[1], R0
1D1C30:  LDR             R0, =(aRqreadpixels - 0x1D1C36); "rqReadPixels"
1D1C32:  ADD             R0, PC; "rqReadPixels"
1D1C34:  VMOV.32         D30[1], R0
1D1C38:  LDR             R0, =(aRqfree - 0x1D1C3E); "rqFree"
1D1C3A:  ADD             R0, PC; "rqFree"
1D1C3C:  VMOV.32         D29[1], R0
1D1C40:  LDR             R0, =(aRqsetzbias - 0x1D1C46); "rqSetZBias"
1D1C42:  ADD             R0, PC; "rqSetZBias"
1D1C44:  VMOV.32         D28[1], R0
1D1C48:  LDR             R0, =(aRqsetcull - 0x1D1C4E); "rqSetCull"
1D1C4A:  ADD             R0, PC; "rqSetCull"
1D1C4C:  VMOV.32         D1[1], R0
1D1C50:  LDR             R0, =(aRqblendfunc - 0x1D1C56); "rqBlendFunc"
1D1C52:  ADD             R0, PC; "rqBlendFunc"
1D1C54:  VMOV.32         D0[1], R0
1D1C58:  ADD.W           R0, R4, #0x74 ; 't'
1D1C5C:  VST1.32         {D20-D21}, [R0]
1D1C60:  ADR             R0, aRqenabledepthr; "rqEnableDepthRead"
1D1C62:  STR.W           R0, [R4,#0x210]
1D1C66:  LDR             R0, =(_Z29RQ_Command_rqEnableDepthWriteRPc_ptr - 0x1D1C70)
1D1C68:  STR.W           R1, [R4,#0x14C]
1D1C6C:  ADD             R0, PC; _Z29RQ_Command_rqEnableDepthWriteRPc_ptr
1D1C6E:  LDR             R0, [R0]; RQ_Command_rqEnableDepthWrite(char *&)
1D1C70:  STR.W           R0, [R4,#0x84]
1D1C74:  ADR             R0, aRqenabledepthw; "rqEnableDepthWrite"
1D1C76:  STR.W           R0, [R4,#0x214]
1D1C7A:  ADD.W           R0, R4, #0x150
1D1C7E:  VST1.32         {D22-D23}, [R0]
1D1C82:  ADD.W           R0, R4, #0x88
1D1C86:  VST1.32         {D18-D19}, [R0]
1D1C8A:  ADD.W           R0, R4, #0x218
1D1C8E:  VST1.32         {D0-D1}, [R0]
1D1C92:  ADD.W           R0, R4, #0x17C
1D1C96:  STR.W           R1, [R4,#0x160]
1D1C9A:  ADD.W           R1, R4, #0x240
1D1C9E:  STR.W           R2, [R4,#0x228]
1D1CA2:  ADD.W           R2, R4, #0x164
1D1CA6:  VST1.32         {D24-D25}, [R2]
1D1CAA:  ADD.W           R2, R4, #0xA0
1D1CAE:  STRD.W          R5, R6, [R4,#0x98]
1D1CB2:  ADD.W           R5, R4, #0x22C
1D1CB6:  VST1.32         {D28-D29}, [R5]
1D1CBA:  ADR             R5, aRqcopy; "rqCopy"
1D1CBC:  VST1.32         {D16-D17}, [R2]
1D1CC0:  MOVS            R2, #0xC
1D1CC2:  STR.W           R5, [R4,#0x23C]
1D1CC6:  STRD.W          R2, LR, [R4,#0x174]
1D1CCA:  STR.W           R3, [R4,#0xB0]
1D1CCE:  VST1.32         {D30-D31}, [R1]
1D1CD2:  ADR             R1, aRqcleanup; "rqCleanup"
1D1CD4:  VST1.32         {D26-D27}, [R0]
1D1CD8:  ADD.W           R0, R4, #0xB4
1D1CDC:  VST1.32         {D8-D9}, [R0]
1D1CE0:  ADR             R0, aRqshutdown; "rqShutdown"
1D1CE2:  STR.W           LR, [R4,#0x18C]
1D1CE6:  STR.W           R12, [R4,#0xC4]
1D1CEA:  STRD.W          R0, R1, [R4,#0x250]
1D1CEE:  MOV             R0, R4
1D1CF0:  SUB.W           R4, R7, #-var_60
1D1CF4:  MOV             SP, R4
1D1CF6:  VPOP            {D8-D15}
1D1CFA:  ADD             SP, SP, #4
1D1CFC:  POP.W           {R8-R11}
1D1D00:  POP             {R4-R7,PC}
