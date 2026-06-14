; =========================================================
; Game Engine Function: _ZN10CDirectory7AddItemERKNS_13DirectoryInfoE
; Address            : 0x3EAB80 - 0x3EABAC
; =========================================================

3EAB80:  LDRD.W          R3, R2, [R0,#4]
3EAB84:  CMP             R2, R3
3EAB86:  BGE             loc_3EABA4
3EAB88:  ADDS            R3, R2, #1
3EAB8A:  STR             R3, [R0,#8]
3EAB8C:  LDR             R0, [R0]
3EAB8E:  VLD1.32         {D16-D17}, [R1]!
3EAB92:  ADD.W           R0, R0, R2,LSL#5
3EAB96:  VLD1.32         {D18-D19}, [R1]
3EAB9A:  VST1.32         {D16-D17}, [R0]!
3EAB9E:  VST1.32         {D18-D19}, [R0]
3EABA2:  BX              LR
3EABA4:  LDR             R0, =(aTooManyObjects - 0x3EABAA); "Too many objects without modelinfo stru"...
3EABA6:  ADD             R0, PC; "Too many objects without modelinfo stru"...
3EABA8:  B.W             sub_19D888
