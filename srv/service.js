const cds = require("@sap/cds");
const activationService = require("./activationService");
//const myConstoller = require("../app/functions/webapp/custom/ListReportExtController.controller")
module.exports = function () {
    this.on("activate", async (req) => {
        await activationService.activate(req);
    });
    this.on("deactivate", async (req) => {
        await activationService.deactivate(req);
    });
    this.on("onNav", async (req) => {

    })
   
    this.on("incrementUserCount", async (req) => {
      
       
        return 1
    });

    this.on("decrementUserCount", async (req) => {
        return 2
    });

};
