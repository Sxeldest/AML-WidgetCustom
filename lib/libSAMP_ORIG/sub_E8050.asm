; =========================================================
; Game Engine Function: sub_E8050
; Address            : 0xE8050 - 0xE8066
; =========================================================

E8050:  AND             LR, R3, R4
E8054:  AND             LR, R1, R2
E8058:  LDRB            LR, [PC,R0]!
E805C:  ADD             R0, SP, #arg_1C
E805E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
E8062:  BLX             j___cxa_end_cleanup
