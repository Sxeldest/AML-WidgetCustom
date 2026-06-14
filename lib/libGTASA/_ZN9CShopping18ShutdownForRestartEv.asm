; =========================================================
; Game Engine Function: _ZN9CShopping18ShutdownForRestartEv
; Address            : 0x35F98C - 0x35F9DE
; =========================================================

35F98C:  PUSH            {R4,R6,R7,LR}
35F98E:  ADD             R7, SP, #8
35F990:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35F99A)
35F992:  MOVS            R4, #0
35F994:  LDR             R2, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F99E)
35F996:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35F998:  LDR             R1, =(_ZN9CShopping13ms_shopLoadedE_ptr - 0x35F9A2)
35F99A:  ADD             R2, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F99C:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
35F99E:  ADD             R1, PC; _ZN9CShopping13ms_shopLoadedE_ptr
35F9A0:  LDR             R2, [R2]; CShopping::ms_sectionNames ...
35F9A2:  LDR             R1, [R1]; char *
35F9A4:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded
35F9A6:  STRB            R4, [R1]; CShopping::ms_shopLoaded
35F9A8:  LDR.W           R0, [R2,R0,LSL#2]; this
35F9AC:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
35F9B0:  ADDS            R1, R0, #1
35F9B2:  ITTT NE
35F9B4:  MOVWNE          R1, #0x63E7; int
35F9B8:  ADDNE           R0, R1; this
35F9BA:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
35F9BE:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35F9C8)
35F9C0:  LDR             R0, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x35F9CA)
35F9C2:  LDR             R2, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x35F9CC)
35F9C4:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35F9C6:  ADD             R0, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
35F9C8:  ADD             R2, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
35F9CA:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
35F9CC:  LDR             R3, [R0]; CShopping::ms_numPriceModifiers ...
35F9CE:  LDR             R0, [R2]; CShopping::ms_bHasBought ...
35F9D0:  STR             R4, [R1]; CShopping::ms_priceSectionLoaded
35F9D2:  MOV.W           R1, #0x230
35F9D6:  STR             R4, [R3]; CShopping::ms_numPriceModifiers
35F9D8:  BLX             j___aeabi_memclr8_1
35F9DC:  POP             {R4,R6,R7,PC}
