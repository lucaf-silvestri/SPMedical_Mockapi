﻿using senai_spMedicalGroup_webApi.Contexts;
using senai_spMedicalGroup_webApi.Domains;
using senai_spMedicalGroup_webApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_spMedicalGroup_webApi.Repositories
{
    public class ConsultaRepository : IConsultaRepository
    {
        spMedicalGroupContext ctx = new spMedicalGroupContext();

        public void Atualizar(int idConsulta, Consultum ConsultaAtualizado)
        {
            Consultum ConsultaBuscado = ListarId(idConsulta);

            if (ConsultaBuscado != null)
            {
                ConsultaBuscado.IdCliente = ConsultaAtualizado.IdCliente;
                ConsultaBuscado.IdMedico = ConsultaAtualizado.IdMedico;
                ConsultaBuscado.IdSituacao = ConsultaAtualizado.IdSituacao;
                ConsultaBuscado.DataConsulta = ConsultaAtualizado.DataConsulta;
                ConsultaBuscado.DescricaoConsulta = ConsultaAtualizado.DescricaoConsulta;
            }

            ctx.Consulta.Update(ConsultaBuscado);

            ctx.SaveChanges();
        }

        public void Cadastrar(Consultum novoConsulta)
        {
            ctx.Consulta.Add(novoConsulta);

            ctx.SaveChanges();
        }

        public void Deletar(int idConsulta)
        {
            Consultum ConsultaBuscado = ListarId(idConsulta);

            ctx.Consulta.Remove(ConsultaBuscado);

            ctx.SaveChanges();
        }

        public List<Consultum> Listar()
        {
            return ctx.Consulta
                .Select(c => new Consultum
                {
                    IdConsulta = c.IdConsulta,
                    IdCliente = c.IdCliente,
                    IdMedico = c.IdMedico,
                    IdSituacao = c.IdSituacao,
                    DataConsulta = c.DataConsulta,
                    DescricaoConsulta = c.DescricaoConsulta,


                    IdClienteNavigation = new Cliente
                    {
                        NomeCliente = c.IdClienteNavigation.NomeCliente,
                        DataNascCliente = c.IdClienteNavigation.DataNascCliente,
                        TelefoneCliente = c.IdClienteNavigation.TelefoneCliente,
                        RgCliente = c.IdClienteNavigation.RgCliente,
                        CpfCliente = c.IdClienteNavigation.CpfCliente,
                    },
                    IdMedicoNavigation = new Medico
                    {
                        NomeMedico = c.IdMedicoNavigation.NomeMedico,
                        CrmMedico = c.IdMedicoNavigation.CrmMedico,
                        IdEspecialidadeMedicoNavigation = new EspecialidadeMedico
                        {
                            NomeEspecialidade = c.IdMedicoNavigation.IdEspecialidadeMedicoNavigation.NomeEspecialidade
                        },
                    },
                    IdSituacaoNavigation = new Situacao
                    {
                        TipoSituacao = c.IdSituacaoNavigation.TipoSituacao
                    }
                }).ToList();
        }

        public Consultum ListarId(int id)
        {
            return ctx.Consulta.FirstOrDefault(c => c.IdConsulta == id);
        }

        public void AtualizarSituacao(int idConsulta, string ConsultaSituacao)
        {
            Consultum ConsultaAtualizada = ListarId(idConsulta);

            switch (ConsultaSituacao)
            {
                case "1":
                    ConsultaAtualizada.IdSituacao = 1;
                    break;

                case "2":
                    ConsultaAtualizada.IdSituacao = 2;
                    break;

                case "3":
                    ConsultaAtualizada.IdSituacao = 3;
                    break;

                default:
                    ConsultaAtualizada.IdSituacao = ConsultaAtualizada.IdSituacao;
                    break;
            }

            ctx.Consulta.Update(ConsultaAtualizada);
            ctx.SaveChanges();
        }

        public void AtualizarDescricao(int idConsulta, Consultum ConsultaDescricao)
        {
            Consultum ConsultaAtualizada = ListarId(idConsulta);

            if (ConsultaDescricao.DescricaoConsulta != null)
            {
                ConsultaAtualizada.DescricaoConsulta = ConsultaDescricao.DescricaoConsulta;
            }

            ctx.Consulta.Update(ConsultaAtualizada);

            ctx.SaveChanges();
        }
    }
}