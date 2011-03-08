#!/bin/bash
ls sql/page-*-[0-9].*sql > test.txxt
ls sql/page-*-[0-9][0-9]*.*sql >> test.txxt
ls sql/page-*-[0-9][0-9][0-9]*.*sql >> test.txxt
