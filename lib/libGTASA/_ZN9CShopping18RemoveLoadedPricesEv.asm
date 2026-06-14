; =========================================================
; Game Engine Function: _ZN9CShopping18RemoveLoadedPricesEv
; Address            : 0x360024 - 0x360058
; =========================================================

360024:  PUSH            {R7,LR}
360026:  MOV             R7, SP
360028:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x360030)
36002A:  LDR             R1, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x360032)
36002C:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
36002E:  ADD             R1, PC; _ZN9CShopping15ms_sectionNamesE_ptr
360030:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
360032:  LDR             R1, [R1]; char *
360034:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded
360036:  LDR.W           R0, [R1,R0,LSL#2]; this
36003A:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
36003E:  ADDS            R1, R0, #1
360040:  ITTT NE
360042:  MOVWNE          R1, #0x63E7; int
360046:  ADDNE           R0, R1; this
360048:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
36004C:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x360054)
36004E:  MOVS            R1, #0
360050:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
360052:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
360054:  STR             R1, [R0]; CShopping::ms_priceSectionLoaded
360056:  POP             {R7,PC}
