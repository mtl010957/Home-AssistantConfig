#!/bin/bash
echo "Cam1 Move Snaps..." && cd /config/www/3629cam1/C1_00626E69269A/snap && /config/scripts/move_snaps.sh
echo "Cam1 Move Records..." && cd /config/www/3629cam1/C1_00626E69269A/record && /config/scripts/move_records.sh

echo "Cam2 Move Snaps..." && cd /config/www/3629cam2/C1_00626E6926B6/snap && /config/scripts/move_snaps.sh
echo "Cam2 Move Records..." && cd /config/www/3629cam2/C1_00626E6926B6/record && /config/scripts/move_records.sh

echo "Cam3 Move Snaps..." && cd /config/www/3629cam3/C1_00626E82585D/snap && /config/scripts/move_snaps.sh
echo "Cam3 Move Records..." && cd /config/www/3629cam3/C1_00626E82585D/record && /config/scripts/move_records.sh

echo "Cam4 Move JPEGs..." && cd /config/www/3629cam4 && /config/scripts/move_cam4_jpeg.sh
echo "Cam4 Get MP4s..." && cd /config/www/3629cam4 && /config/scripts/get_cam4_mp4.sh
