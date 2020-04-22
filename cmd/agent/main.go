/*
 *  *******************************************************************************
 *  * Copyright (c) 2020 Edgeworx, Inc.
 *  *
 *  * This program and the accompanying materials are made available under the
 *  * terms of the Eclipse Public License v. 2.0 which is available at
 *  * http://www.eclipse.org/legal/epl-2.0
 *  *
 *  * SPDX-License-Identifier: EPL-2.0
 *  *******************************************************************************
 *
 */

package main

import (
	iutil "github.com/eclipse-iofog/agent-go/internal/util"
	putil "github.com/eclipse-iofog/agent-go/pkg/util"
)

func main() {
	putil.Print(iutil.GetVersion())
}
