; ���E Alt �L�[�̋�ł��� IME �� OFF/ON ��؂�ւ���
;
; �� Alt �L�[�̋�ł��� IME ���u�p���v�ɐ؂�ւ�
; �E Alt �L�[�̋�ł��� IME ���u���ȁv�ɐ؂�ւ�
; Alt �L�[�������Ă���Ԃɑ��̃L�[��łƒʏ�� Alt �L�[�Ƃ��ē���
;
; AutoHotkey: v1.1.23.05
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; ��v�ȃL�[�� HotKey �ɐݒ肵�A���������p�X�X���[����
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~LAlt::
*~RAlt::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; �� Alt ��ł��� IME �� OFF
LAlt up::
    if (A_PriorHotkey == "*~LAlt")
    {
        IME_SET(0)
    }
    Return

; �E Alt ��ł��� IME �� ON
RAlt up::
    if (A_PriorHotkey == "*~RAlt")
    {
        IME_SET(1)
    }
    Return