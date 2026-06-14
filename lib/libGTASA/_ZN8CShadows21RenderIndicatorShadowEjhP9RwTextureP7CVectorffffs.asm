; =========================================================
; Game Engine Function: _ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs
; Address            : 0x5BDF40 - 0x5BE002
; =========================================================

5BDF40:  PUSH            {R4-R7,LR}
5BDF42:  ADD             R7, SP, #0xC
5BDF44:  PUSH.W          {R8-R11}
5BDF48:  SUB             SP, SP, #4
5BDF4A:  VPUSH           {D8}
5BDF4E:  SUB             SP, SP, #0x30; float
5BDF50:  VLDR            S0, [R7,#arg_C]
5BDF54:  MOVW            R10, #0xCCCD
5BDF58:  VLDR            S4, [R7,#arg_0]
5BDF5C:  MOV             R4, R0
5BDF5E:  VNEG.F32        S0, S0
5BDF62:  VLDR            S2, =0.8
5BDF66:  LDR             R6, =(byte_A48230 - 0x5BDF78)
5BDF68:  ADD.W           R9, SP, #0x58+var_38
5BDF6C:  VLDR            D16, [R3]
5BDF70:  MOVT            R10, #0x3E4C
5BDF74:  ADD             R6, PC; byte_A48230
5BDF76:  LDR             R0, [R3,#8]
5BDF78:  STR             R0, [SP,#0x58+var_30]
5BDF7A:  MOVS            R0, #0
5BDF7C:  LDRB            R1, [R6]
5BDF7E:  MOV.W           R11, #0x800
5BDF82:  VMAX.F32        D8, D0, D2
5BDF86:  LDRB            R2, [R6,#(byte_A48231 - 0xA48230)]
5BDF88:  LDRB            R3, [R6,#(byte_A48232 - 0xA48230)]
5BDF8A:  MOV.W           R8, #0xFF
5BDF8E:  VSTR            D16, [SP,#0x58+var_38]
5BDF92:  STMEA.W         SP, {R1-R3,R8,R11}
5BDF96:  MOVS            R1, #1; unsigned int
5BDF98:  MOV             R2, R9; unsigned __int16
5BDF9A:  VMUL.F32        S0, S16, S2
5BDF9E:  STRD.W          R10, R0, [SP,#0x58+var_44]; float
5BDFA2:  MOV             R0, R4; this
5BDFA4:  VMOV            R5, S0
5BDFA8:  MOV             R3, R5; CVector *
5BDFAA:  BLX.W           j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
5BDFAE:  VLDR            S0, =0.9
5BDFB2:  MOVS            R5, #0
5BDFB4:  LDRB            R0, [R6]
5BDFB6:  VMUL.F32        S0, S16, S0
5BDFBA:  LDRB            R1, [R6,#(byte_A48231 - 0xA48230)]
5BDFBC:  LDRB            R2, [R6,#(byte_A48232 - 0xA48230)]
5BDFBE:  STMEA.W         SP, {R0-R2,R8,R11}
5BDFC2:  MOVS            R0, #0
5BDFC4:  MOVS            R1, #1; unsigned int
5BDFC6:  STR.W           R10, [SP,#0x58+var_44]; float
5BDFCA:  MOV             R2, R9; unsigned __int16
5BDFCC:  STR             R0, [SP,#0x58+var_40]; float
5BDFCE:  MOV             R0, R4; this
5BDFD0:  VMOV            R3, S0; CVector *
5BDFD4:  BLX.W           j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
5BDFD8:  VMOV            R3, S16; CVector *
5BDFDC:  LDRB            R0, [R6]
5BDFDE:  LDRB            R1, [R6,#(byte_A48231 - 0xA48230)]
5BDFE0:  LDRB            R2, [R6,#(byte_A48232 - 0xA48230)]
5BDFE2:  STMEA.W         SP, {R0-R2,R8,R11}
5BDFE6:  MOV             R0, R4; this
5BDFE8:  MOVS            R1, #1; unsigned int
5BDFEA:  MOV             R2, R9; unsigned __int16
5BDFEC:  STRD.W          R10, R5, [SP,#0x58+var_44]; float
5BDFF0:  BLX.W           j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
5BDFF4:  ADD             SP, SP, #0x30 ; '0'
5BDFF6:  VPOP            {D8}
5BDFFA:  ADD             SP, SP, #4
5BDFFC:  POP.W           {R8-R11}
5BE000:  POP             {R4-R7,PC}
