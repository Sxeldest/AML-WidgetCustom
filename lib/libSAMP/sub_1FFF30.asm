; =========================================================
; Game Engine Function: sub_1FFF30
; Address            : 0x1FFF30 - 0x1FFF46
; =========================================================

1FFF30:  AND             LR, R3, R4
1FFF34:  AND             LR, R1, R2
1FFF38:  LDRB            LR, [PC,R0]!
1FFF3C:  ADD             R0, SP, #arg_1C
1FFF3E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1FFF42:  BLX             j___cxa_end_cleanup
