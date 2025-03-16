import React from 'react'
import {
  Button,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
} from "@nextui-org/react";

function ModalConfirm({ gen_salida, isOpen, onOpenChange }) {

  return (
    <>
      <Modal isOpen={isOpen} onOpenChange={onOpenChange} placement="top-center">
        <ModalContent>
          {(onClose) => (
            <>
              <>
                <ModalHeader>Generar Salidas</ModalHeader>
                <ModalBody>
                  ¿Seguro de Generar las salidas? Los tiempos de este especial serán ELIMINADOS.
                </ModalBody>
                <ModalFooter>
                  <Button color="danger" variant='flat' onPress={onClose}>
                    Cerrar
                  </Button>

                  <Button color="success" onPress={gen_salida}>
                    Generar
                  </Button>
                </ModalFooter>
              </>
            </>
          )}
        </ModalContent>
      </Modal>
    </>
  )
}

export default ModalConfirm