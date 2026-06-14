; =========================================================
; Game Engine Function: _ZN8CCredits6UpdateEv
; Address            : 0x5A4E84 - 0x5A4EC0
; =========================================================

5A4E84:  PUSH            {R4,R6,R7,LR}
5A4E86:  ADD             R7, SP, #8
5A4E88:  LDR             R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x5A4E8E)
5A4E8A:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
5A4E8C:  LDR             R0, [R0]; CCredits::bCreditsGoing ...
5A4E8E:  LDRB            R0, [R0]; CCredits::bCreditsGoing
5A4E90:  CBZ             R0, locret_5A4EBE
5A4E92:  LDR             R0, =(gMobileMenu_ptr - 0x5A4E98)
5A4E94:  ADD             R0, PC; gMobileMenu_ptr
5A4E96:  LDR             R0, [R0]; gMobileMenu
5A4E98:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
5A4E9A:  CMP             R1, #0
5A4E9C:  ITT EQ
5A4E9E:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
5A4EA0:  CMPEQ           R0, #0
5A4EA2:  BNE             locret_5A4EBE
5A4EA4:  MOVS            R0, #0x29 ; ')'
5A4EA6:  MOVS            R1, #0
5A4EA8:  MOVS            R2, #2
5A4EAA:  MOVS            R4, #0
5A4EAC:  BLX.W           j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
5A4EB0:  CMP             R0, #1
5A4EB2:  IT NE
5A4EB4:  POPNE           {R4,R6,R7,PC}
5A4EB6:  LDR             R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x5A4EBC)
5A4EB8:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
5A4EBA:  LDR             R0, [R0]; CCredits::bCreditsGoing ...
5A4EBC:  STRB            R4, [R0]; CCredits::bCreditsGoing
5A4EBE:  POP             {R4,R6,R7,PC}
