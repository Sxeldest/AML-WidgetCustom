; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity26IsCJDressedInForGangSpeechEv
; Address            : 0x39CC5C - 0x39CD40
; =========================================================

39CC5C:  PUSH            {R4-R7,LR}
39CC5E:  ADD             R7, SP, #0xC
39CC60:  PUSH.W          {R8}
39CC64:  MOVS            R0, #0; int
39CC66:  MOVS            R4, #0
39CC68:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39CC6C:  CMP             R0, #0
39CC6E:  BEQ             loc_39CD28
39CC70:  LDR.W           R1, [R0,#0x444]
39CC74:  LDR             R2, [R0,#0x14]
39CC76:  LDR             R1, [R1,#4]
39CC78:  ADD.W           R3, R2, #0x30 ; '0'
39CC7C:  CMP             R2, #0
39CC7E:  LDR             R5, [R1,#0x28]
39CC80:  LDR             R6, [R1,#0x30]
39CC82:  LDRD.W          R8, R4, [R1,#0x64]
39CC86:  IT EQ
39CC88:  ADDEQ           R3, R0, #4
39CC8A:  LDM.W           R3, {R0-R2}
39CC8E:  BLX             j__ZN10CGameLogic22FindCityClosestToPointE7CVector; CGameLogic::FindCityClosestToPoint(CVector)
39CC92:  CMP             R0, #1
39CC94:  BNE             loc_39CD26
39CC96:  ADR             R0, aHoodyagreen; "hoodyagreen"
39CC98:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CC9C:  CMP             R5, R0
39CC9E:  BEQ             loc_39CD22
39CCA0:  ADR             R0, aShirtbgang; "shirtbgang"
39CCA2:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCA6:  CMP             R5, R0
39CCA8:  BEQ             loc_39CD22
39CCAA:  ADR             R0, aTracktrgang; "tracktrgang"
39CCAC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCB0:  CMP             R6, R0
39CCB2:  BEQ             loc_39CD22
39CCB4:  ADR             R0, aDenimsgang; "denimsgang"
39CCB6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCBA:  CMP             R6, R0
39CCBC:  BEQ             loc_39CD22
39CCBE:  ADR             R0, aBandgang; "bandgang"
39CCC0:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCC4:  CMP             R4, R0
39CCC6:  BEQ             loc_39CD22
39CCC8:  ADR             R0, aHockey; "hockey"
39CCCA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCCE:  CMP             R4, R0
39CCD0:  BEQ             loc_39CD22
39CCD2:  ADR             R0, aCapgang; "capgang"
39CCD4:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCD8:  CMP             R4, R0
39CCDA:  BEQ             loc_39CD22
39CCDC:  ADR             R0, aCapgangback; "capgangback"
39CCDE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCE2:  CMP             R4, R0
39CCE4:  BEQ             loc_39CD22
39CCE6:  ADR             R0, aCapgangside; "capgangside"
39CCE8:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCEC:  CMP             R4, R0
39CCEE:  BEQ             loc_39CD22
39CCF0:  ADR             R0, aCapgangover; "capgangover"
39CCF2:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CCF6:  CMP             R4, R0
39CCF8:  BEQ             loc_39CD22
39CCFA:  ADR             R0, aCapgangup; "capgangup"
39CCFC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CD00:  CMP             R4, R0
39CD02:  BEQ             loc_39CD22
39CD04:  ADR             R0, aBandred3; "bandred3"
39CD06:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CD0A:  CMP             R8, R0
39CD0C:  BEQ             loc_39CD22
39CD0E:  ADR             R0, aBandblue3; "bandblue3"
39CD10:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CD14:  CMP             R8, R0
39CD16:  BEQ             loc_39CD22
39CD18:  ADR             R0, aBandgang3; "bandgang3"
39CD1A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CD1E:  CMP             R8, R0
39CD20:  BNE             loc_39CD30
39CD22:  MOVS            R4, #1
39CD24:  B               loc_39CD28
39CD26:  MOVS            R4, #0
39CD28:  MOV             R0, R4
39CD2A:  POP.W           {R8}
39CD2E:  POP             {R4-R7,PC}
39CD30:  ADR             R0, aBandblack3; "bandblack3"
39CD32:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
39CD36:  MOVS            R4, #0
39CD38:  CMP             R8, R0
39CD3A:  IT EQ
39CD3C:  MOVEQ           R4, #1
39CD3E:  B               loc_39CD28
