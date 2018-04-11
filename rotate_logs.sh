#!/bin/bash

mv home-assistant_v2.db.5.gz home-assistant_v2.db.6.gz
mv home-assistant_v2.db.4.gz home-assistant_v2.db.5.gz
mv home-assistant_v2.db.3.gz home-assistant_v2.db.4.gz
mv home-assistant_v2.db.2.gz home-assistant_v2.db.3.gz
mv home-assistant_v2.db.1.gz home-assistant_v2.db.2.gz
mv home-assistant_v2.db.0.gz home-assistant_v2.db.1.gz
gzip home-assistant_v2.db
mv home-assistant_v2.db.gz home-assistant_v2.db.0.gz

mv home-assistant.log.5.gz home-assistant.log.6.gz
mv home-assistant.log.4.gz home-assistant.log.5.gz
mv home-assistant.log.3.gz home-assistant.log.4.gz
mv home-assistant.log.2.gz home-assistant.log.3.gz
mv home-assistant.log.1.gz home-assistant.log.2.gz
mv home-assistant.log.0.gz home-assistant.log.1.gz
gzip home-assistant.log
mv home-assistant.log.gz home-assistant.log.0.gz

