const { Router } = require("express");

const {
  indexVista, 
  createVista, 
  index,
  show,
  update,
  store,
  destroy,
} = require("../controllers/galeria");

const router = Router();

//Vistas

router.get("/", indexVista);
router.get("/create", createVista);

// CRUD
router.get("/api", index);
router.get("/api/:id/show", show);
router.post("/api", store);
router.put("/api/:id/update", update);
router.delete("/api/:id/destroy", destroy);

module.exports = router;