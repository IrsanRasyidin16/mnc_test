package repository

import (
	"database/sql"
	"final-project/model"
	"final-project/utils"
	"fmt"
)

type TransferRepo interface {
	InsertTransfer(trx *model.TransferModel, wallet []float64) error
	GetTransferById(id string) (*model.TransferModel, error)
	GetAllTransfer() ([]*model.TransferModel, error)
}

type trxhantRepoImpl struct {
	db *sql.DB
}

func (trxRepo *trxhantRepoImpl) InsertTransfer(trx *model.TransferModel, wallet []float64) error {

	qryTrx := utils.INSERT_MERC
	err := trxRepo.db.QueryRow(qryTrx, utils.UuidGenerate(), trx.Send_id, trx.Receive_id, trx.Nominal)
	if err != nil {
		return fmt.Errorf("error on trxhantRepoImpl.InsertTransfer() 2  : %v", err)
	}

	return nil
}

func (trxRepo *trxhantRepoImpl) GetTransferById(id string) (*model.TransferModel, error) {
	qry := utils.GET_MERC_ID
	trx := &model.TransferModel{}
	err := trxRepo.db.QueryRow(qry, id).Scan(&trx.ID, trx.Send_id, trx.Receive_id, trx.Nominal)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, nil
		}
		return nil, fmt.Errorf("error on trxhantRepoImpl.GetTransferById() : %w", err)
	}
	return trx, nil
}

func (trxRepo *trxhantRepoImpl) GetAllTransfer() ([]*model.TransferModel, error) {
	qry := utils.GET_ALL_MERCHANT
	rows, err := trxRepo.db.Query(qry)
	if err != nil {
		return nil, fmt.Errorf("error on trxhantRepoImpl.GetAllTransfer() : %w", err)
	}
	defer rows.Close()
	var arrTransfer []*model.TransferModel
	for rows.Next() {
		trx := &model.TransferModel{}
		rows.Scan(&trx.ID, trx.Send_id, trx.Receive_id, trx.Nominal)
		arrTransfer = append(arrTransfer, trx)
	}
	return arrTransfer, nil
}

func NewTransferRepo(db *sql.DB) TransferRepo {
	return &trxhantRepoImpl{
		db: db,
	}
}
