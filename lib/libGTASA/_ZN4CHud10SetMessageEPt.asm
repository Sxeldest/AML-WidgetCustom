; =========================================================
; Game Engine Function: _ZN4CHud10SetMessageEPt
; Address            : 0x43704C - 0x437086
; =========================================================

43704C:  CBZ             R0, loc_43706C
43704E:  LDR             R1, =(_ZN4CHud9m_MessageE_ptr - 0x437054)
437050:  ADD             R1, PC; _ZN4CHud9m_MessageE_ptr
437052:  LDR             R2, [R1]; CHud::m_Message ...
437054:  MOVS            R1, #0
437056:  LDRH            R3, [R0]
437058:  CBZ             R3, loc_437076
43705A:  ADDS            R1, #1
43705C:  STRH.W          R3, [R2],#2; CHud::m_Message
437060:  ADDS            R0, #2
437062:  UXTH            R3, R1
437064:  CMP.W           R3, #0x190
437068:  BCC             loc_437056
43706A:  B               loc_437076
43706C:  LDR             R0, =(_ZN4CHud9m_MessageE_ptr - 0x437074)
43706E:  MOVS            R1, #0
437070:  ADD             R0, PC; _ZN4CHud9m_MessageE_ptr
437072:  LDR             R0, [R0]; CHud::m_Message ...
437074:  STRH            R1, [R0]; CHud::m_Message
437076:  LDR             R0, =(_ZN4CHud9m_MessageE_ptr - 0x437080)
437078:  UXTH            R1, R1
43707A:  MOVS            R2, #0
43707C:  ADD             R0, PC; _ZN4CHud9m_MessageE_ptr
43707E:  LDR             R0, [R0]; CHud::m_Message ...
437080:  STRH.W          R2, [R0,R1,LSL#1]
437084:  BX              LR
