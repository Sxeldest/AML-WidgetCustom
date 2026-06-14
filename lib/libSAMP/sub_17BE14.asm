; =========================================================
; Game Engine Function: sub_17BE14
; Address            : 0x17BE14 - 0x17C000
; =========================================================

17BE14:  PUSH            {R4-R7,LR}
17BE16:  ADD             R7, SP, #0xC
17BE18:  PUSH.W          {R8,R9,R11}
17BE1C:  VMOV.I32        Q8, #0
17BE20:  MOV             R4, R0
17BE22:  ADDS            R0, #0x4C ; 'L'
17BE24:  MOV             R5, R1
17BE26:  MOVS            R1, #0xA
17BE28:  MOV             R6, R2
17BE2A:  VST1.32         {D16-D17}, [R0]!
17BE2E:  VST1.32         {D16-D17}, [R0]!
17BE32:  VST1.32         {D16-D17}, [R0],R1
17BE36:  MOV             R1, R6
17BE38:  VST1.16         {D16-D17}, [R0]
17BE3C:  LDR             R0, [R5]
17BE3E:  LDR             R2, [R0,#0x54]
17BE40:  MOV             R0, R5
17BE42:  BLX             R2
17BE44:  LDR             R1, [R5]
17BE46:  STR             R0, [R4]
17BE48:  MOV             R0, R5
17BE4A:  LDR             R2, [R1,#0x7C]
17BE4C:  MOV             R1, R6
17BE4E:  BLX             R2
17BE50:  CMP             R0, #0
17BE52:  BEQ.W           loc_17BFEA
17BE56:  MOV             R6, R0
17BE58:  LDR             R0, [R5]
17BE5A:  LDR             R2, =(aSetinputlayout - 0x17BE68); "SetInputLayout" ...
17BE5C:  MOV             R1, R6
17BE5E:  LDR             R3, =(aIV - 0x17BE6A); "(I)V" ...
17BE60:  LDR.W           R12, [R0,#0x84]
17BE64:  ADD             R2, PC; "SetInputLayout"
17BE66:  ADD             R3, PC; "(I)V"
17BE68:  MOV             R0, R5
17BE6A:  MOV             R8, R3
17BE6C:  BLX             R12
17BE6E:  LDR             R1, [R5]
17BE70:  LDR             R2, =(aInitgui - 0x17BE7C); "InitGui" ...
17BE72:  LDR             R3, =(aV - 0x17BE7E); "()V" ...
17BE74:  LDR.W           R12, [R1,#0x84]
17BE78:  ADD             R2, PC; "InitGui"
17BE7A:  ADD             R3, PC; "()V"
17BE7C:  STR             R0, [R4,#4]
17BE7E:  MOV             R0, R5
17BE80:  MOV             R1, R6
17BE82:  MOV             R9, R3
17BE84:  BLX             R12
17BE86:  LDR             R1, [R5]
17BE88:  LDR.W           R12, [R1,#0x84]
17BE8C:  MOV             R1, R6
17BE8E:  LDR             R2, =(aSetbindername - 0x17BE9A); "setBinderName" ...
17BE90:  STR             R0, [R4,#8]
17BE92:  MOV             R0, R5
17BE94:  LDR             R3, =(aIBV - 0x17BE9C); "(I[B)V" ...
17BE96:  ADD             R2, PC; "setBinderName"
17BE98:  ADD             R3, PC; "(I[B)V"
17BE9A:  BLX             R12
17BE9C:  LDR             R1, [R5]
17BE9E:  LDR.W           R12, [R1,#0x84]
17BEA2:  MOV             R1, R6
17BEA4:  LDR             R2, =(aSetbinderstate - 0x17BEB0); "setBinderState" ...
17BEA6:  STR             R0, [R4,#0xC]
17BEA8:  MOV             R0, R5
17BEAA:  LDR             R3, =(aIzV - 0x17BEB2); "(IZ)V" ...
17BEAC:  ADD             R2, PC; "setBinderState"
17BEAE:  ADD             R3, PC; "(IZ)V"
17BEB0:  BLX             R12
17BEB2:  LDR             R1, [R5]
17BEB4:  LDR.W           R12, [R1,#0x84]
17BEB8:  MOV             R1, R6
17BEBA:  LDR             R2, =(aSetuielementvi - 0x17BEC6); "setUIElementVisible" ...
17BEBC:  STR             R0, [R4,#0x10]
17BEBE:  MOV             R0, R5
17BEC0:  LDR             R3, =(aIzzV - 0x17BEC8); "(IZZ)V" ...
17BEC2:  ADD             R2, PC; "setUIElementVisible"
17BEC4:  ADD             R3, PC; "(IZZ)V"
17BEC6:  BLX             R12
17BEC8:  LDR             R1, [R5]
17BECA:  LDR.W           R12, [R1,#0x84]
17BECE:  MOV             R1, R6
17BED0:  LDR             R2, =(aShowplayerdial - 0x17BEDC); "showPlayerDialog" ...
17BED2:  STR             R0, [R4,#0x14]
17BED4:  MOV             R0, R5
17BED6:  LDR             R3, =(aIiBBBBV - 0x17BEDE); "(II[B[B[B[B)V" ...
17BED8:  ADD             R2, PC; "showPlayerDialog"
17BEDA:  ADD             R3, PC; "(II[B[B[B[B)V"
17BEDC:  BLX             R12
17BEDE:  LDR             R1, [R5]
17BEE0:  MOV             R3, R9
17BEE2:  LDR.W           R12, [R1,#0x84]
17BEE6:  MOV             R1, R6
17BEE8:  LDR             R2, =(aDestroydialog - 0x17BEF2); "destroyDialog" ...
17BEEA:  STR             R0, [R4,#0x18]
17BEEC:  MOV             R0, R5
17BEEE:  ADD             R2, PC; "destroyDialog"
17BEF0:  BLX             R12
17BEF2:  LDR             R1, [R5]
17BEF4:  LDR.W           R12, [R1,#0x84]
17BEF8:  MOV             R1, R6
17BEFA:  LDR             R2, =(aAddslidertoazv - 0x17BF06); "addSliderToAzVoiceSettings" ...
17BEFC:  STR             R0, [R4,#0x1C]
17BEFE:  MOV             R0, R5
17BF00:  LDR             R3, =(aIiiBI - 0x17BF08); "(III[B)I" ...
17BF02:  ADD             R2, PC; "addSliderToAzVoiceSettings"
17BF04:  ADD             R3, PC; "(III[B)I"
17BF06:  BLX             R12
17BF08:  LDR             R1, [R5]
17BF0A:  MOV             R3, R9
17BF0C:  LDR.W           R12, [R1,#0x84]
17BF10:  MOV             R1, R6
17BF12:  LDR             R2, =(aRemoveallslide - 0x17BF1C); "removeAllSlidersFormPlayersVoiceSetting"... ...
17BF14:  STR             R0, [R4,#0x20]
17BF16:  MOV             R0, R5
17BF18:  ADD             R2, PC; "removeAllSlidersFormPlayersVoiceSetting"...
17BF1A:  BLX             R12
17BF1C:  LDR             R1, [R5]
17BF1E:  LDR.W           R12, [R1,#0x84]
17BF22:  MOV             R1, R6
17BF24:  LDR             R2, =(aAddslidertoazv_0 - 0x17BF30); "addSliderToAzVoicePlayersSettings" ...
17BF26:  STR             R0, [R4,#0x24]
17BF28:  MOV             R0, R5
17BF2A:  LDR             R3, =(aIiiBiV - 0x17BF32); "(III[BI)V" ...
17BF2C:  ADD             R2, PC; "addSliderToAzVoicePlayersSettings"
17BF2E:  ADD             R3, PC; "(III[BI)V"
17BF30:  BLX             R12
17BF32:  LDR             R1, [R5]
17BF34:  MOV             R3, R8
17BF36:  LDR.W           R12, [R1,#0x84]
17BF3A:  MOV             R1, R6
17BF3C:  LDR             R2, =(aRemovesliderfr - 0x17BF46); "removeSliderFromAzVoiceSettingsBySlider"... ...
17BF3E:  STR             R0, [R4,#0x28]
17BF40:  MOV             R0, R5
17BF42:  ADD             R2, PC; "removeSliderFromAzVoiceSettingsBySlider"...
17BF44:  BLX             R12
17BF46:  LDR             R1, [R5]
17BF48:  LDR.W           R12, [R1,#0x84]
17BF4C:  MOV             R1, R6
17BF4E:  LDR             R2, =(aSendfrontendme - 0x17BF5A); "sendFrontendMessage" ...
17BF50:  STR             R0, [R4,#0x2C]
17BF52:  MOV             R0, R5
17BF54:  LDR             R3, =(aIiljavaLangStr - 0x17BF5C); "(IILjava/lang/String;)V" ...
17BF56:  ADD             R2, PC; "sendFrontendMessage"
17BF58:  ADD             R3, PC; "(IILjava/lang/String;)V"
17BF5A:  BLX             R12
17BF5C:  LDR             R1, [R5]
17BF5E:  MOV             R3, R9
17BF60:  LDR.W           R12, [R1,#0x84]
17BF64:  MOV             R1, R6
17BF66:  LDR             R2, =(aExitgame - 0x17BF70); "exitGame" ...
17BF68:  STR             R0, [R4,#0x30]
17BF6A:  MOV             R0, R5
17BF6C:  ADD             R2, PC; "exitGame"
17BF6E:  BLX             R12
17BF70:  LDR             R1, [R5]
17BF72:  LDR             R2, =(aAddkeyboardhis - 0x17BF7C); "addKeyboardHistory" ...
17BF74:  LDR.W           R12, [R1,#0x84]
17BF78:  ADD             R2, PC; "addKeyboardHistory"
17BF7A:  LDR             R3, =(aBV - 0x17BF86); "([B)V" ...
17BF7C:  MOV             R1, R6
17BF7E:  STR             R0, [R4,#0x34]
17BF80:  MOV             R0, R5
17BF82:  ADD             R3, PC; "([B)V"
17BF84:  BLX             R12
17BF86:  LDR             R1, [R5]
17BF88:  MOV             R3, R8
17BF8A:  LDR             R2, =(aSetchatpagesiz - 0x17BF98); "setChatPageSize" ...
17BF8C:  STR             R0, [R4,#0x38]
17BF8E:  MOV             R0, R5
17BF90:  LDR.W           R12, [R1,#0x84]
17BF94:  ADD             R2, PC; "setChatPageSize"
17BF96:  MOV             R1, R6
17BF98:  BLX             R12
17BF9A:  LDR             R1, [R5]
17BF9C:  LDR             R2, =(aSetchatfontsiz - 0x17BFA8); "setChatFontSize" ...
17BF9E:  LDR             R3, =(aFV - 0x17BFAA); "(F)V" ...
17BFA0:  LDR.W           R12, [R1,#0x84]
17BFA4:  ADD             R2, PC; "setChatFontSize"
17BFA6:  ADD             R3, PC; "(F)V"
17BFA8:  STR             R0, [R4,#0x3C]
17BFAA:  MOV             R0, R5
17BFAC:  MOV             R1, R6
17BFAE:  BLX             R12
17BFB0:  LDR             R1, [R5]
17BFB2:  LDR             R2, =(aSetchatprintti - 0x17BFBE); "setChatPrintTimestamp" ...
17BFB4:  LDR             R3, =(aZV - 0x17BFC0); "(Z)V" ...
17BFB6:  LDR.W           R12, [R1,#0x84]
17BFBA:  ADD             R2, PC; "setChatPrintTimestamp"
17BFBC:  ADD             R3, PC; "(Z)V"
17BFBE:  STR             R0, [R4,#0x40]
17BFC0:  MOV             R0, R5
17BFC2:  MOV             R1, R6
17BFC4:  MOV             R8, R3
17BFC6:  BLX             R12
17BFC8:  LDR             R1, [R5]
17BFCA:  MOV             R3, R8
17BFCC:  LDR             R2, =(aSetautocomplet - 0x17BFDA); "setAutocompleteState" ...
17BFCE:  STR             R0, [R4,#0x44]
17BFD0:  MOV             R0, R5
17BFD2:  LDR.W           R12, [R1,#0x84]
17BFD6:  ADD             R2, PC; "setAutocompleteState"
17BFD8:  MOV             R1, R6
17BFDA:  BLX             R12
17BFDC:  LDR             R1, [R5]
17BFDE:  STR             R0, [R4,#0x48]
17BFE0:  MOV             R0, R5
17BFE2:  LDR             R2, [R1,#0x5C]
17BFE4:  MOV             R1, R6
17BFE6:  BLX             R2
17BFE8:  B               loc_17BFF8
17BFEA:  LDR             R1, =(aAxl - 0x17BFF4); "AXL" ...
17BFEC:  MOVS            R0, #4; prio
17BFEE:  LDR             R2, =(aNveventclassNu - 0x17BFF6); "nvEventClass null" ...
17BFF0:  ADD             R1, PC; "AXL"
17BFF2:  ADD             R2, PC; "nvEventClass null"
17BFF4:  BLX             __android_log_print
17BFF8:  MOV             R0, R4
17BFFA:  POP.W           {R8,R9,R11}
17BFFE:  POP             {R4-R7,PC}
