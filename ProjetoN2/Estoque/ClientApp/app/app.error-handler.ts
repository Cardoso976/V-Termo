import { ErrorHandler, Inject, NgZone, isDevMode } from "@angular/core";

import * as Raven from 'raven-js';
import { ToastyService } from 'ng2-toasty';

export class AppErrorHandler implements ErrorHandler {
    constructor(
        @Inject(NgZone) private ngZone: NgZone,
        @Inject(ToastyService) private toastyService: ToastyService)
    { }
    handleError(error: any): void {
        this.ngZone.run(() => {
            if (typeof(window) !== 'undefined') {
                this.toastyService.error({
                    title: 'Erro',
                    msg: 'Um erro inesperado aconteceu.',
                    showClose: true,
                    timeout: 5000,
                    theme: 'bootstrap' 
                });
            }
        });
        
        if (!isDevMode())
            Raven.captureException(error.originalError || error);
        else
            throw error();        
    }
}