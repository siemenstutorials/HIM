#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���2_install_v2_docker.sh �T�OA��_1iIz0��M �DO�Hԓ'Ovvf��ή�Z҃�	Jb��ЄH$&F�E��-'�gw��T*�����ͷ�{o�PK=ơ��o�8���@��:�K�� ��,\@�T]IÖ�l�I_߬a� $tj�8�B�J �`P����^���O6�L�
�	 �0�S���x$��W*�7 ��,2�kOK*p����Q�g��������� �H** ��2��Ǒ�N34��)�A	����M�������ds#��������8
�E���Y�C��;���t�%�k�
2z���!Ft��4$?�>=��m��P���|�m���'G�ݭ�ng�+#7g��/ս;�F�˴9���[;^�=gd":oE��a�fo�"��������^;�X������so�ON�L�a����ش�03=�J6�=!V�yA���PfVg��8�
P$�4�"D���w�r��S����1��[ ۅ �(�6�b���0"��ӫ`cr'O�zיs�0�eр*�9vK*�*����G�鈰�g���Awk���7�}c3%�2[њv����r�Rƈ��*j��%�s����3nu�@��5o�E{����ש�k��M�=����Q���j�h��6�\�<�b��j�̷~����7u:  