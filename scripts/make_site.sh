#!/bin/bash
echo "Cam1 Move Snaps..." && cd /config/www/3629cam1/3629cam1_snap && /config/scripts/move_snaps.sh
echo "Cam1 Link Snaps..." && cd /config/www/3629cam1/3629cam1_snap && /config/scripts/link_latest_30d_snaps.sh
echo "Cam1 Move Records..." && cd /config/www/3629cam1/3629cam1_record && /config/scripts/move_records.sh
echo "Cam1 Link Records..." && cd /config/www/3629cam1/3629cam1_record && /config/scripts/link_latest_30d_records.sh

echo "Cam2 Move Snaps..." && cd /config/www/3629cam2/3629cam2_snap && /config/scripts/move_snaps.sh
echo "Cam2 Link Snaps..." && cd /config/www/3629cam2/3629cam2_snap && /config/scripts/link_latest_30d_snaps.sh
echo "Cam2 Move Records..." && cd /config/www/3629cam2/3629cam2_record && /config/scripts/move_records.sh
echo "Cam2 Link Records..." && cd /config/www/3629cam2/3629cam2_record && /config/scripts/link_latest_30d_records.sh

echo "Cam3 Move Snaps..." && cd /config/www/3629cam3/3629cam3_snap && /config/scripts/move_snaps.sh
echo "Cam3 Link Snaps..." && cd /config/www/3629cam3/3629cam3_snap && /config/scripts/link_latest_30d_snaps.sh
echo "Cam3 Move Records..." && cd /config/www/3629cam3/3629cam3_record && /config/scripts/move_records.sh
echo "Cam3 Link Records..." && cd /config/www/3629cam3/3629cam3_record && /config/scripts/link_latest_30d_records.sh

echo "Cam4 Move JPEGs..." && cd /config/www/3629cam4/3629cam4_snap && /config/scripts/move_cam4_jpeg.sh
echo "Cam4 Link JPEGs..." && cd /config/www/3629cam4/3629cam4_snap && /config/scripts/link_latest_30d_snaps.sh
echo "Cam4 Get MP4s..." && cd /config/www/3629cam4/3629cam4_record && /config/scripts/get_cam4_mp4.sh
echo "Cam4 Link MP4s..." && cd /config/www/3629cam4/3629cam4_record && /config/scripts/link_latest_30d_records.sh
