; =========================================================
; Game Engine Function: sub_EDC94
; Address            : 0xEDC94 - 0xEDDFE
; =========================================================

EDC94:  PUSH            {R4-R7,LR}
EDC96:  ADD             R7, SP, #0xC
EDC98:  PUSH.W          {R8-R10}
EDC9C:  MOV             R5, R1
EDC9E:  LDR             R1, =(_ZTVNSt6__ndk16locale5__impE - 0xEDCAA); `vtable for'std::locale::__imp ...
EDCA0:  MOV             R4, R0
EDCA2:  ADD.W           R9, R4, #8
EDCA6:  ADD             R1, PC; `vtable for'std::locale::__imp
EDCA8:  MOV             R10, R3
EDCAA:  ADDS            R1, #8
EDCAC:  MOV.W           R0, #0xFFFFFFFF
EDCB0:  MOV             R6, R2
EDCB2:  STRD.W          R1, R0, [R4]
EDCB6:  MOV             R0, R9
EDCB8:  MOVS            R1, #0x1C
EDCBA:  BL              sub_ECC3C
EDCBE:  ADD.W           R8, R4, #0x90
EDCC2:  LDR             R1, =(byte_4CC4A - 0xEDCCA)
EDCC4:  MOV             R0, R8; int
EDCC6:  ADD             R1, PC; byte_4CC4A ; s
EDCC8:  BL              sub_5FBF8
EDCCC:  ADD.W           R1, R5, #8
EDCD0:  MOV             R0, R9; int
EDCD2:  BL              sub_ED394
EDCD6:  MOVS            R5, #0
EDCD8:  LDRD.W          R0, R1, [R4,#8]
EDCDC:  SUBS            R1, R1, R0
EDCDE:  CMP.W           R5, R1,ASR#2
EDCE2:  BCS             loc_EDCF2
EDCE4:  LDR.W           R0, [R0,R5,LSL#2]; this
EDCE8:  CBZ             R0, loc_EDCEE
EDCEA:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
EDCEE:  ADDS            R5, #1
EDCF0:  B               loc_EDCD8
EDCF2:  MOVS.W          R0, R10,LSL#28
EDCF6:  BPL             loc_EDD08
EDCF8:  MOV             R0, R4
EDCFA:  MOV             R1, R6
EDCFC:  BL              sub_EDE50
EDD00:  MOV             R0, R4
EDD02:  MOV             R1, R6
EDD04:  BL              sub_EDE88
EDD08:  MOVS.W          R0, R10,LSL#31
EDD0C:  BEQ             loc_EDD3E
EDD0E:  MOV             R0, R4
EDD10:  MOV             R1, R6
EDD12:  BL              sub_EDEC0
EDD16:  MOV             R0, R4
EDD18:  MOV             R1, R6
EDD1A:  BL              sub_EDEF8
EDD1E:  MOV             R0, R4
EDD20:  MOV             R1, R6
EDD22:  BL              sub_EDF30
EDD26:  MOV             R0, R4
EDD28:  MOV             R1, R6
EDD2A:  BL              sub_EDF68
EDD2E:  MOV             R0, R4
EDD30:  MOV             R1, R6
EDD32:  BL              sub_EDFA0
EDD36:  MOV             R0, R4
EDD38:  MOV             R1, R6
EDD3A:  BL              sub_EDFD8
EDD3E:  MOVS.W          R0, R10,LSL#27
EDD42:  BPL             loc_EDD84
EDD44:  MOV             R0, R4
EDD46:  MOV             R1, R6
EDD48:  BL              sub_EE010
EDD4C:  MOV             R0, R4
EDD4E:  MOV             R1, R6
EDD50:  BL              sub_EE048
EDD54:  MOV             R0, R4
EDD56:  MOV             R1, R6
EDD58:  BL              sub_EE080
EDD5C:  MOV             R0, R4
EDD5E:  MOV             R1, R6
EDD60:  BL              sub_EE0B8
EDD64:  MOV             R0, R4
EDD66:  MOV             R1, R6
EDD68:  BL              sub_EE0F0
EDD6C:  MOV             R0, R4
EDD6E:  MOV             R1, R6
EDD70:  BL              sub_EE128
EDD74:  MOV             R0, R4
EDD76:  MOV             R1, R6
EDD78:  BL              sub_EE160
EDD7C:  MOV             R0, R4
EDD7E:  MOV             R1, R6
EDD80:  BL              sub_EE198
EDD84:  MOVS.W          R0, R10,LSL#30
EDD88:  BPL             loc_EDDBA
EDD8A:  MOV             R0, R4
EDD8C:  MOV             R1, R6
EDD8E:  BL              sub_EE1D0
EDD92:  MOV             R0, R4
EDD94:  MOV             R1, R6
EDD96:  BL              sub_EE208
EDD9A:  MOV             R0, R4
EDD9C:  MOV             R1, R6
EDD9E:  BL              sub_EE240
EDDA2:  MOV             R0, R4
EDDA4:  MOV             R1, R6
EDDA6:  BL              sub_EE278
EDDAA:  MOV             R0, R4
EDDAC:  MOV             R1, R6
EDDAE:  BL              sub_EE2B0
EDDB2:  MOV             R0, R4
EDDB4:  MOV             R1, R6
EDDB6:  BL              sub_EE2E8
EDDBA:  MOVS.W          R0, R10,LSL#29
EDDBE:  BPL             loc_EDDE0
EDDC0:  MOV             R0, R4
EDDC2:  MOV             R1, R6
EDDC4:  BL              sub_EE320
EDDC8:  MOV             R0, R4
EDDCA:  MOV             R1, R6
EDDCC:  BL              sub_EE358
EDDD0:  MOV             R0, R4
EDDD2:  MOV             R1, R6
EDDD4:  BL              sub_EE390
EDDD8:  MOV             R0, R4
EDDDA:  MOV             R1, R6
EDDDC:  BL              sub_EE3C8
EDDE0:  MOVS.W          R0, R10,LSL#26
EDDE4:  BPL             loc_EDDF6
EDDE6:  MOV             R0, R4
EDDE8:  MOV             R1, R6
EDDEA:  BL              sub_EE400
EDDEE:  MOV             R0, R4
EDDF0:  MOV             R1, R6
EDDF2:  BL              sub_EE438
EDDF6:  MOV             R0, R4
EDDF8:  POP.W           {R8-R10}
EDDFC:  POP             {R4-R7,PC}
