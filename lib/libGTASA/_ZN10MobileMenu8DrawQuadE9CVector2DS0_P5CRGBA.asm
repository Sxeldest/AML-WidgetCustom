; =========================================================
; Game Engine Function: _ZN10MobileMenu8DrawQuadE9CVector2DS0_P5CRGBA
; Address            : 0x298718 - 0x2987D8
; =========================================================

298718:  PUSH            {R4-R7,LR}
29871A:  ADD             R7, SP, #0xC
29871C:  PUSH.W          {R8,R9,R11}
298720:  MOV             R4, R1
298722:  MOV             R6, R0
298724:  MOVS            R0, #1
298726:  MOVS            R1, #0
298728:  MOV             R9, R3
29872A:  MOV             R8, R2
29872C:  MOVS            R5, #0
29872E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298732:  LDR             R0, =(maVertices_ptr - 0x29873C)
298734:  MOV.W           R2, #0x3F800000
298738:  ADD             R0, PC; maVertices_ptr
29873A:  LDR             R1, [R0]; maVertices
29873C:  LDR             R0, [R7,#arg_0]
29873E:  STRD.W          R6, R4, [R1]
298742:  STRD.W          R2, R2, [R1,#(dword_6E0140 - 0x6E0138)]
298746:  STRD.W          R5, R5, [R1,#(dword_6E014C - 0x6E0138)]
29874A:  LDRB            R3, [R0]
29874C:  STRB            R3, [R1,#(byte_6E0148 - 0x6E0138)]
29874E:  LDRB            R3, [R0,#1]
298750:  STRB            R3, [R1,#(byte_6E0149 - 0x6E0138)]
298752:  LDRB            R3, [R0,#2]
298754:  STRB            R3, [R1,#(byte_6E014A - 0x6E0138)]
298756:  LDRB            R3, [R0,#3]
298758:  STRD.W          R2, R2, [R1,#(dword_6E015C - 0x6E0138)]
29875C:  STRD.W          R2, R5, [R1,#(dword_6E0168 - 0x6E0138)]
298760:  STRD.W          R8, R4, [R1,#(dword_6E0154 - 0x6E0138)]
298764:  STRB            R3, [R1,#(byte_6E014B - 0x6E0138)]
298766:  LDRB            R3, [R0,#4]
298768:  STRB.W          R3, [R1,#(byte_6E0164 - 0x6E0138)]
29876C:  LDRB            R3, [R0,#5]
29876E:  STRB.W          R3, [R1,#(byte_6E0165 - 0x6E0138)]
298772:  LDRB            R3, [R0,#6]
298774:  STRB.W          R3, [R1,#(byte_6E0166 - 0x6E0138)]
298778:  LDRB            R3, [R0,#7]
29877A:  STRD.W          R9, R2, [R1,#(dword_6E0174 - 0x6E0138)]
29877E:  STR             R2, [R1,#(dword_6E017C - 0x6E0138)]
298780:  STRD.W          R5, R2, [R1,#(dword_6E0184 - 0x6E0138)]
298784:  STRB.W          R3, [R1,#(byte_6E0167 - 0x6E0138)]
298788:  STR             R6, [R1,#(dword_6E0170 - 0x6E0138)]
29878A:  LDRB            R3, [R0,#8]
29878C:  STRB.W          R3, [R1,#(byte_6E0180 - 0x6E0138)]
298790:  LDRB            R3, [R0,#9]
298792:  STRB.W          R3, [R1,#(byte_6E0181 - 0x6E0138)]
298796:  LDRB            R3, [R0,#0xA]
298798:  STRB.W          R3, [R1,#(byte_6E0182 - 0x6E0138)]
29879C:  LDRB            R3, [R0,#0xB]
29879E:  STRD.W          R9, R2, [R1,#(dword_6E0190 - 0x6E0138)]
2987A2:  STR             R2, [R1,#(dword_6E0198 - 0x6E0138)]
2987A4:  STRD.W          R2, R2, [R1,#(dword_6E01A0 - 0x6E0138)]
2987A8:  STRB.W          R3, [R1,#(byte_6E0183 - 0x6E0138)]
2987AC:  STR.W           R8, [R1,#(dword_6E018C - 0x6E0138)]
2987B0:  LDRB            R2, [R0,#0xC]
2987B2:  STRB.W          R2, [R1,#(byte_6E019C - 0x6E0138)]
2987B6:  LDRB            R2, [R0,#0xD]
2987B8:  STRB.W          R2, [R1,#(byte_6E019D - 0x6E0138)]
2987BC:  LDRB            R2, [R0,#0xE]
2987BE:  STRB.W          R2, [R1,#(byte_6E019E - 0x6E0138)]
2987C2:  MOVS            R2, #4
2987C4:  LDRB            R0, [R0,#0xF]
2987C6:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
2987CA:  MOVS            R0, #4
2987CC:  POP.W           {R8,R9,R11}
2987D0:  POP.W           {R4-R7,LR}
2987D4:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
