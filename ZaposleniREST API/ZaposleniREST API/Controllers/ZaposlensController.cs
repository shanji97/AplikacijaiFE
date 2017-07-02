﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using ZaposleniREST_API.Models;

namespace ZaposleniREST_API.Controllers
{
    public class ZaposlensController : ApiController
    {
        private ZaposleniREST_APIContext db = new ZaposleniREST_APIContext();
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter da;
        private Exception ex = new Exception();
        SqlConnection povezava = new SqlConnection("Data Source=83.212.126.172\\SQLEXPRESS;Initial Catalog=iFE;User id=sa;Password=iFE2016");
     

        // GET: api/Zaposlens
        public IQueryable<Zaposlen> GetZaposlens()
        {
           
            
            cmd = new SqlCommand("SELECT * FROM dbo.fnVsiPodatkiZaposlenega(@ID)", povezava);
            cmd.Parameters.AddWithValue("@ID", 0);
            cmd.CommandType = CommandType.Text;  

            dt = new DataTable();
            da = new SqlDataAdapter(cmd);
            List<Zaposlen> z = new List<Zaposlen>();
            try
            {
                povezava.Open();
                da.Fill(dt);
               foreach (DataRow dr in dt.Rows)
                {
                    Zaposlen emp = new Zaposlen
                    {

                        Ime = dr["ImeZaposlenega"].ToString(),
                        Priimek = dr["PriimekZaposlenega"].ToString(),

                        Eposta = dr["Eposta"].ToString(),
                        Telefonska = dr["Telefonska"].ToString(),
                        GovorilneUre = dr["GovorilneUre"].ToString(),

                        Prostor = dr["Prostor"].ToString(),
                        Naziv = dr["Naziv"].ToString(),
                        TipZaposlenega = dr["TipZaposlenega"].ToString(),

                        Laboratorij = dr["Laboratorij"].ToString(),
                        Tajnica = dr["Tajnica"].ToString(),
                        Vloga = dr["Vloga"].ToString(),
                        ID = int.Parse((dr["ID"].ToString()))
                    };
                    z.Add(emp);
               
                    
                }
            }
            catch(Exception e)
            {
                ex = e;
            }
            finally
            {
                povezava.Close();
            }
           
           
              
            IQueryable<Zaposlen> zaposlen = z.AsQueryable();
            return zaposlen;



        }

        // GET: api/Zaposlens/5
        [ResponseType(typeof(Zaposlen))]
        public IHttpActionResult GetZaposlen(int id)
        {
            Zaposlen zaposlen = db.Zaposlens.Find(id);
            if (zaposlen == null)
            {
                return NotFound();
            }

            return Ok(zaposlen);
        }

        // PUT: api/Zaposlens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutZaposlen(int id, Zaposlen zaposlen)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != zaposlen.ID)
            {
                return BadRequest();
            }

            db.Entry(zaposlen).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ZaposlenExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Zaposlens
        [ResponseType(typeof(Zaposlen))]
        public IHttpActionResult PostZaposlen(Zaposlen zaposlen)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Zaposlens.Add(zaposlen);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = zaposlen.ID }, zaposlen);
        }

        // DELETE: api/Zaposlens/5
        [ResponseType(typeof(Zaposlen))]
        public IHttpActionResult DeleteZaposlen(int id)
        {
            Zaposlen zaposlen = db.Zaposlens.Find(id);
            if (zaposlen == null)
            {
                return NotFound();
            }

            db.Zaposlens.Remove(zaposlen);
            db.SaveChanges();

            return Ok(zaposlen);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ZaposlenExists(int id)
        {
            return db.Zaposlens.Count(e => e.ID == id) > 0;
        }
    }
}