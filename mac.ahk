;================================================================
;auto hot key script for windows
;mac���L�[�o�C���h
;================================================================
 
#InstallKeybdHook
#UseHook
 
;================================================================
;�֐�
;================================================================
 
;----------------------------------------------------------------
;�L�[�o�C���h�𖳌��ɂ���E�B���h�E���ǂ������f����
; ahk_class��auto hot key�t����AU3_Spy.exe���g�p���Ē��ׂ�B
;  ���� �Ȃ�
;  �߂�l 1:�L�[�o�C���h�𖳌��ɂ���E�B���h�E
;         0:�L�[�o�C���h��L���ɂ���E�B���h�E
;----------------------------------------------------------------
is_disable_window()
{
    ;gvim
    IfWinActive,ahk_class Vim
    {
        return 1
    }
    ;tera term
    IfWinActive,ahk_class VTWin32
    {
        return 1
    }
    ;vmware player
    IfWinActive,ahk_class VMPlayerFrame
    {
        return 1
    }
    return 0
}
 
;----------------------------------------------------------------
;�L�[�𑗐M����
; �L�[�o�C���h�𖳌��ɂ���E�B���h�E�ł́A���M���ꂽ�L�[�����̂܂܎g�p����
; �L�[�o�C���h��L���ɂ���E�B���h�E�ł́A���M���ꂽ�L�[��u��������
;
;  ���� original_key:�L�[�o�C���h�𖳌��ɂ���E�B���h�E�̏ꍇ�A���M����L�[
;       replace_key:�L�[�o�C���h��L���ɂ���E�B���h�E�̏ꍇ�A���M����L�[
;  �߂�l �Ȃ�
;----------------------------------------------------------------
send_key(original_key,replace_key)
{
    if (is_disable_window())
    {
        Send,%original_key%
        return
    }
    Send,%replace_key%
    return
}
 
;================================================================
;ctrl�L�[�o�C���h
;================================================================
 
;----------------------------------------------------------------
;�ړ��n�ishift�L�[�Ƃ̓��������Ή��j
;ctrl + n : ��
;ctrl + p : ��
;ctrl + f : �E
;ctrl + b : ��
;ctrl + a : Home
;ctrl + e : End
;----------------------------------------------------------------
 
<^n::send_key("^n","{Down}")
<^+n::send_key("^+n","+{Down}")
<^p::send_key("^p","{Up}")
<^+p::send_key("^+p","+{Up}")
<^f::send_key("^f","{Right}")
<^+f::send_key("^+f","+{Right}")
<^b::send_key("^b","{Left}")
<^+b::send_key("^+b","+{Left}")
<^a::send_key("^a","{Home}")
<^+a::send_key("^+a","+{Home}")
<^e::send_key("^e","{End}")
<^+e::send_key("^+e","+{End}")
 
;----------------------------------------------------------------
;�ҏW�n
;ctrl + h : BackSpace
;ctrl + d : Delete
;ctrl + m : Enter
;ctrl + k : �J�[�\������s���܂ō폜
;----------------------------------------------------------------
 
<^h::send_key("^h","{BS}")
<^d::send_key("^d","{Del}")
<^m::send_key("^m","{Return}")
<^k::send_key("^k","+{End}{Del}")