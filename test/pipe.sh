#! /bin/sh

testPipe()
{
    expected=$(md5sum data/tagesschau | awk '{print $1}');

    cat data/tagesschau.rss | ../src/rss-enclosure.sh > $SHUNIT_TMPDIR/testTagesschau

    is=$(md5sum $SHUNIT_TMPDIR/testTagesschau | awk '{print $1}');

    assertEquals $expected $is;
}

. shunit2
