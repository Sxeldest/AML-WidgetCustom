; =========================================================
; Game Engine Function: _ZN14CConversations24FindFreeConversationSlotEv
; Address            : 0x301140 - 0x301234
; =========================================================

301140:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301146)
301142:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301144:  LDR             R0, [R0]; CConversations::m_aConversations ...
301146:  LDR             R0, [R0,#(dword_7A0F88 - 0x7A0F80)]
301148:  CMP             R0, #0
30114A:  BEQ             loc_3011F2
30114C:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301152)
30114E:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301150:  LDR             R0, [R0]; CConversations::m_aConversations ...
301152:  LDR             R0, [R0,#(dword_7A0FA4 - 0x7A0F80)]
301154:  CMP             R0, #0
301156:  BEQ             loc_3011F6
301158:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30115E)
30115A:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
30115C:  LDR             R0, [R0]; CConversations::m_aConversations ...
30115E:  LDR             R0, [R0,#(dword_7A0FC0 - 0x7A0F80)]
301160:  CMP             R0, #0
301162:  BEQ             loc_3011FA
301164:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30116A)
301166:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301168:  LDR             R0, [R0]; CConversations::m_aConversations ...
30116A:  LDR             R0, [R0,#(dword_7A0FDC - 0x7A0F80)]
30116C:  CMP             R0, #0
30116E:  BEQ             loc_3011FE
301170:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301176)
301172:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301174:  LDR             R0, [R0]; CConversations::m_aConversations ...
301176:  LDR             R0, [R0,#(dword_7A0FF8 - 0x7A0F80)]
301178:  CMP             R0, #0
30117A:  BEQ             loc_301202
30117C:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301182)
30117E:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301180:  LDR             R0, [R0]; CConversations::m_aConversations ...
301182:  LDR.W           R0, [R0,#(dword_7A1014 - 0x7A0F80)]
301186:  CBZ             R0, loc_301206
301188:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30118E)
30118A:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
30118C:  LDR             R0, [R0]; CConversations::m_aConversations ...
30118E:  LDR.W           R0, [R0,#(dword_7A1030 - 0x7A0F80)]
301192:  CBZ             R0, loc_30120A
301194:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30119A)
301196:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301198:  LDR             R0, [R0]; CConversations::m_aConversations ...
30119A:  LDR.W           R0, [R0,#(dword_7A104C - 0x7A0F80)]
30119E:  CBZ             R0, loc_30120E
3011A0:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011A6)
3011A2:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011A4:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011A6:  LDR.W           R0, [R0,#(dword_7A1068 - 0x7A0F80)]
3011AA:  CBZ             R0, loc_301212
3011AC:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011B2)
3011AE:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011B0:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011B2:  LDR.W           R0, [R0,#(dword_7A1084 - 0x7A0F80)]
3011B6:  CBZ             R0, loc_301216
3011B8:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011BE)
3011BA:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011BC:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011BE:  LDR.W           R0, [R0,#(dword_7A10A0 - 0x7A0F80)]
3011C2:  CBZ             R0, loc_30121A
3011C4:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011CA)
3011C6:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011C8:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011CA:  LDR.W           R0, [R0,#(dword_7A10BC - 0x7A0F80)]
3011CE:  CBZ             R0, loc_30121E
3011D0:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011D6)
3011D2:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011D4:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011D6:  LDR.W           R0, [R0,#(dword_7A10D8 - 0x7A0F80)]
3011DA:  CBZ             R0, loc_301222
3011DC:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3011E2)
3011DE:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3011E0:  LDR             R0, [R0]; CConversations::m_aConversations ...
3011E2:  LDR.W           R0, [R0,#(dword_7A10F4 - 0x7A0F80)]
3011E6:  CMP             R0, #0
3011E8:  ITT NE
3011EA:  MOVNE           R0, #0
3011EC:  BXNE            LR
3011EE:  MOVS            R0, #0xD
3011F0:  B               loc_301224
3011F2:  MOVS            R0, #0
3011F4:  B               loc_301224
3011F6:  MOVS            R0, #1
3011F8:  B               loc_301224
3011FA:  MOVS            R0, #2
3011FC:  B               loc_301224
3011FE:  MOVS            R0, #3
301200:  B               loc_301224
301202:  MOVS            R0, #4
301204:  B               loc_301224
301206:  MOVS            R0, #5
301208:  B               loc_301224
30120A:  MOVS            R0, #6
30120C:  B               loc_301224
30120E:  MOVS            R0, #7
301210:  B               loc_301224
301212:  MOVS            R0, #8
301214:  B               loc_301224
301216:  MOVS            R0, #9
301218:  B               loc_301224
30121A:  MOVS            R0, #0xA
30121C:  B               loc_301224
30121E:  MOVS            R0, #0xB
301220:  B               loc_301224
301222:  MOVS            R0, #0xC
301224:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30122E)
301226:  RSB.W           R0, R0, R0,LSL#3
30122A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30122C:  LDR             R1, [R1]; CConversations::m_aConversations ...
30122E:  ADD.W           R0, R1, R0,LSL#2
301232:  BX              LR
