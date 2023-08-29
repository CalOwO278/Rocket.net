 // Importacion de express
const express = require('express');
const cors = require('cors');
const pool = require('../database/db.js');

const routerAuditoria= express.Router();

routerAuditoria.use(express.json());
routerAuditoria.use(cors());

// get all
routerAuditoria.get('/', async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM auditorias order by fecha desc, hora desc")
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ message: "Ha ocurrido un error" });
  }
});


// get by id
routerAuditoria.get('/:id', async (req, res) => {
  try {

    const params = req.params
    const result = await pool.query(`SELECT * FROM auditorias  WHERE id_auditoria=${params.id} LIMIT 1 `)
    res.json(result.rows[0]);
  } catch (error) {
    res.status(500).json({ message: "Ha ocurrido un error" });
  }
});



module.exports = routerAuditoria;