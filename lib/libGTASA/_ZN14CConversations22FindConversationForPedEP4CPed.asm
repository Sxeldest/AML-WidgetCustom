; =========================================================
; Game Engine Function: _ZN14CConversations22FindConversationForPedEP4CPed
; Address            : 0x3014FC - 0x301600
; =========================================================

3014FC:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301502)
3014FE:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301500:  LDR             R1, [R1]; CConversations::m_aConversations ...
301502:  LDR             R1, [R1,#(dword_7A0F88 - 0x7A0F80)]
301504:  CMP             R1, R0
301506:  BEQ             loc_3015BE
301508:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30150E)
30150A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30150C:  LDR             R1, [R1]; CConversations::m_aConversations ...
30150E:  LDR             R1, [R1,#(dword_7A0FA4 - 0x7A0F80)]
301510:  CMP             R1, R0
301512:  BEQ             loc_3015C2
301514:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30151A)
301516:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301518:  LDR             R1, [R1]; CConversations::m_aConversations ...
30151A:  LDR             R1, [R1,#(dword_7A0FC0 - 0x7A0F80)]
30151C:  CMP             R1, R0
30151E:  BEQ             loc_3015C6
301520:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301526)
301522:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301524:  LDR             R1, [R1]; CConversations::m_aConversations ...
301526:  LDR             R1, [R1,#(dword_7A0FDC - 0x7A0F80)]
301528:  CMP             R1, R0
30152A:  BEQ             loc_3015CA
30152C:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301532)
30152E:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301530:  LDR             R1, [R1]; CConversations::m_aConversations ...
301532:  LDR             R1, [R1,#(dword_7A0FF8 - 0x7A0F80)]
301534:  CMP             R1, R0
301536:  BEQ             loc_3015CE
301538:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30153E)
30153A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30153C:  LDR             R1, [R1]; CConversations::m_aConversations ...
30153E:  LDR.W           R1, [R1,#(dword_7A1014 - 0x7A0F80)]
301542:  CMP             R1, R0
301544:  BEQ             loc_3015D2
301546:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30154C)
301548:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30154A:  LDR             R1, [R1]; CConversations::m_aConversations ...
30154C:  LDR.W           R1, [R1,#(dword_7A1030 - 0x7A0F80)]
301550:  CMP             R1, R0
301552:  BEQ             loc_3015D6
301554:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30155A)
301556:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301558:  LDR             R1, [R1]; CConversations::m_aConversations ...
30155A:  LDR.W           R1, [R1,#(dword_7A104C - 0x7A0F80)]
30155E:  CMP             R1, R0
301560:  BEQ             loc_3015DA
301562:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301568)
301564:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301566:  LDR             R1, [R1]; CConversations::m_aConversations ...
301568:  LDR.W           R1, [R1,#(dword_7A1068 - 0x7A0F80)]
30156C:  CMP             R1, R0
30156E:  BEQ             loc_3015DE
301570:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301576)
301572:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301574:  LDR             R1, [R1]; CConversations::m_aConversations ...
301576:  LDR.W           R1, [R1,#(dword_7A1084 - 0x7A0F80)]
30157A:  CMP             R1, R0
30157C:  BEQ             loc_3015E2
30157E:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301584)
301580:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301582:  LDR             R1, [R1]; CConversations::m_aConversations ...
301584:  LDR.W           R1, [R1,#(dword_7A10A0 - 0x7A0F80)]
301588:  CMP             R1, R0
30158A:  BEQ             loc_3015E6
30158C:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301592)
30158E:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
301590:  LDR             R1, [R1]; CConversations::m_aConversations ...
301592:  LDR.W           R1, [R1,#(dword_7A10BC - 0x7A0F80)]
301596:  CMP             R1, R0
301598:  BEQ             loc_3015EA
30159A:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3015A0)
30159C:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30159E:  LDR             R1, [R1]; CConversations::m_aConversations ...
3015A0:  LDR.W           R1, [R1,#(dword_7A10D8 - 0x7A0F80)]
3015A4:  CMP             R1, R0
3015A6:  BEQ             loc_3015EE
3015A8:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3015AE)
3015AA:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
3015AC:  LDR             R1, [R1]; CConversations::m_aConversations ...
3015AE:  LDR.W           R1, [R1,#(dword_7A10F4 - 0x7A0F80)]
3015B2:  CMP             R1, R0
3015B4:  ITT NE
3015B6:  MOVNE           R0, #0
3015B8:  BXNE            LR
3015BA:  MOVS            R0, #0xD
3015BC:  B               loc_3015F0
3015BE:  MOVS            R0, #0
3015C0:  B               loc_3015F0
3015C2:  MOVS            R0, #1
3015C4:  B               loc_3015F0
3015C6:  MOVS            R0, #2
3015C8:  B               loc_3015F0
3015CA:  MOVS            R0, #3
3015CC:  B               loc_3015F0
3015CE:  MOVS            R0, #4
3015D0:  B               loc_3015F0
3015D2:  MOVS            R0, #5
3015D4:  B               loc_3015F0
3015D6:  MOVS            R0, #6
3015D8:  B               loc_3015F0
3015DA:  MOVS            R0, #7
3015DC:  B               loc_3015F0
3015DE:  MOVS            R0, #8
3015E0:  B               loc_3015F0
3015E2:  MOVS            R0, #9
3015E4:  B               loc_3015F0
3015E6:  MOVS            R0, #0xA
3015E8:  B               loc_3015F0
3015EA:  MOVS            R0, #0xB
3015EC:  B               loc_3015F0
3015EE:  MOVS            R0, #0xC
3015F0:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3015FA)
3015F2:  RSB.W           R0, R0, R0,LSL#3
3015F6:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
3015F8:  LDR             R1, [R1]; CConversations::m_aConversations ...
3015FA:  ADD.W           R0, R1, R0,LSL#2
3015FE:  BX              LR
