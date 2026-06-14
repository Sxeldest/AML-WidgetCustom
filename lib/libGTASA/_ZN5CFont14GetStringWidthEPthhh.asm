; =========================================================
; Game Engine Function: _ZN5CFont14GetStringWidthEPthhh
; Address            : 0x5AB020 - 0x5AB092
; =========================================================

5AB020:  PUSH            {R4-R7,LR}
5AB022:  ADD             R7, SP, #0xC
5AB024:  PUSH.W          {R8}
5AB028:  VPUSH           {D8}
5AB02C:  MOV             R4, R1
5AB02E:  MOV             R5, R0
5AB030:  BLX.W           j__ZN5CFont12GetNextSpaceEPt; CFont::GetNextSpace(ushort *)
5AB034:  VLDR            S16, =0.0
5AB038:  MOV             R6, R0
5AB03A:  MOVW            R8, #0xFFE0
5AB03E:  B               loc_5AB054
5AB040:  ADD             R0, R8
5AB042:  MOVS            R1, #0; unsigned __int16
5AB044:  UXTH            R0, R0; this
5AB046:  BLX.W           j__ZN5CFont16GetCharacterSizeEtb; CFont::GetCharacterSize(ushort,bool)
5AB04A:  VMOV            S0, R0
5AB04E:  ADDS            R5, #2
5AB050:  VADD.F32        S16, S16, S0
5AB054:  CMP             R5, R6
5AB056:  BCS             loc_5AB060
5AB058:  LDRH            R0, [R5]
5AB05A:  CMP             R0, #0x7E ; '~'
5AB05C:  BEQ             loc_5AB06E
5AB05E:  B               loc_5AB07A
5AB060:  CMP             R4, #0
5AB062:  ITT NE
5AB064:  LDRHNE          R0, [R5]
5AB066:  CMPNE           R0, #0
5AB068:  BEQ             loc_5AB084
5AB06A:  CMP             R0, #0x7E ; '~'
5AB06C:  BNE             loc_5AB07A
5AB06E:  ADDS            R5, #2
5AB070:  LDRH.W          R0, [R5],#2
5AB074:  CMP             R0, #0x7E ; '~'
5AB076:  BNE             loc_5AB070
5AB078:  LDRH            R0, [R5]
5AB07A:  CMP             R0, #0
5AB07C:  IT NE
5AB07E:  CMPNE           R0, #0x7E ; '~'
5AB080:  BEQ             loc_5AB054
5AB082:  B               loc_5AB040
5AB084:  VMOV            R0, S16
5AB088:  VPOP            {D8}
5AB08C:  POP.W           {R8}
5AB090:  POP             {R4-R7,PC}
