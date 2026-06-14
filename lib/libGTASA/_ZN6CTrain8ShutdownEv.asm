; =========================================================
; Game Engine Function: _ZN6CTrain8ShutdownEv
; Address            : 0x57CFBC - 0x57D014
; =========================================================

57CFBC:  PUSH            {R4,R6,R7,LR}
57CFBE:  ADD             R7, SP, #8
57CFC0:  LDR             R0, =(pTrackNodes_ptr - 0x57CFC6)
57CFC2:  ADD             R0, PC; pTrackNodes_ptr
57CFC4:  LDR             R0, [R0]; pTrackNodes
57CFC6:  LDR             R0, [R0]; void *
57CFC8:  CMP             R0, #0
57CFCA:  IT NE
57CFCC:  BLXNE           _ZdaPv; operator delete[](void *)
57CFD0:  LDR             R0, =(pTrackNodes_ptr - 0x57CFD8)
57CFD2:  MOVS            R4, #0
57CFD4:  ADD             R0, PC; pTrackNodes_ptr
57CFD6:  LDR             R1, [R0]; pTrackNodes
57CFD8:  LDR             R0, [R1,#(dword_A12E80 - 0xA12E7C)]; void *
57CFDA:  STR             R4, [R1]
57CFDC:  CMP             R0, #0
57CFDE:  IT NE
57CFE0:  BLXNE           _ZdaPv; operator delete[](void *)
57CFE4:  LDR             R0, =(pTrackNodes_ptr - 0x57CFEA)
57CFE6:  ADD             R0, PC; pTrackNodes_ptr
57CFE8:  LDR             R1, [R0]; pTrackNodes
57CFEA:  LDR             R0, [R1,#(dword_A12E84 - 0xA12E7C)]; void *
57CFEC:  STR             R4, [R1,#(dword_A12E80 - 0xA12E7C)]
57CFEE:  CMP             R0, #0
57CFF0:  IT NE
57CFF2:  BLXNE           _ZdaPv; operator delete[](void *)
57CFF6:  LDR             R0, =(pTrackNodes_ptr - 0x57CFFE)
57CFF8:  MOVS            R4, #0
57CFFA:  ADD             R0, PC; pTrackNodes_ptr
57CFFC:  LDR             R1, [R0]; pTrackNodes
57CFFE:  LDR             R0, [R1,#(dword_A12E88 - 0xA12E7C)]; void *
57D000:  STR             R4, [R1,#(dword_A12E84 - 0xA12E7C)]
57D002:  CMP             R0, #0
57D004:  IT NE
57D006:  BLXNE           _ZdaPv; operator delete[](void *)
57D00A:  LDR             R0, =(pTrackNodes_ptr - 0x57D010)
57D00C:  ADD             R0, PC; pTrackNodes_ptr
57D00E:  LDR             R0, [R0]; pTrackNodes
57D010:  STR             R4, [R0,#(dword_A12E88 - 0xA12E7C)]
57D012:  POP             {R4,R6,R7,PC}
