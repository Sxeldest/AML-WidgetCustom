; =========================================================
; Game Engine Function: _ZN7CCamera48SetCameraDirectlyBehindForFollowPed_CamOnAStringEv
; Address            : 0x3D9FD8 - 0x3DA006
; =========================================================

3D9FD8:  PUSH            {R4,R6,R7,LR}
3D9FDA:  ADD             R7, SP, #8
3D9FDC:  MOV             R4, R0
3D9FDE:  LDR             R0, =(TheCamera_ptr - 0x3D9FE6)
3D9FE0:  MOVS            R1, #1
3D9FE2:  ADD             R0, PC; TheCamera_ptr
3D9FE4:  LDR             R0, [R0]; TheCamera
3D9FE6:  STRB            R1, [R0,#(word_951FC2 - 0x951FA8)]
3D9FE8:  MOV.W           R0, #0xFFFFFFFF; int
3D9FEC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D9FF0:  CMP             R0, #0
3D9FF2:  IT EQ
3D9FF4:  POPEQ           {R4,R6,R7,PC}
3D9FF6:  LDR             R1, [R0,#0x14]
3D9FF8:  LDRD.W          R0, R1, [R1,#0x10]; float
3D9FFC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DA000:  STR.W           R0, [R4,#0x11C]
3DA004:  POP             {R4,R6,R7,PC}
