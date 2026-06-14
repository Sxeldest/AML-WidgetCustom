; =========================================================
; Game Engine Function: _ZN5CFont14GetNumberLinesEffPt
; Address            : 0x5AA180 - 0x5AA18A
; =========================================================

5AA180:  MOV             R3, R2; CFont *
5AA182:  MOV             R2, R1; float
5AA184:  MOV             R1, R0; unsigned __int8
5AA186:  MOVS            R0, #0; this
5AA188:  B               _ZN5CFont20ProcessCurrentStringEhffPt; CFont::ProcessCurrentString(uchar,float,float,ushort *)
