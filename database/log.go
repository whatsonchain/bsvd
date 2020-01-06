// Copyright (c) 2013-2016 The btcsuite developers
// Use of this source code is governed by an ISC
// license that can be found in the LICENSE file.

package database

import (
	"github.com/whatsonchain/bsvlog"
)

// log is a logger that is initialized with no output filters.  This
// means the package will not perform any logging by default until the caller
// requests it.
var log bsvlog.Logger

// The default amount of logging is none.
func init() {
	DisableLog()
}

// DisableLog disables all library log output.  Logging output is disabled
// by default until UseLogger is called.
func DisableLog() {
	log = bsvlog.Disabled
}

// UseLogger uses a specified Logger to output package logging info.
func UseLogger(logger bsvlog.Logger) {
	log = logger

	// Update the logger for the registered drivers.
	for _, drv := range drivers {
		if drv.UseLogger != nil {
			drv.UseLogger(logger)
		}
	}
}
